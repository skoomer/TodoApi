class Api::V1::ProjectsController < ApplicationController
  # include  Pundit 
  # after_action :verify_authorized 
 
  before_action :set_project, only: %w(update destroy)

  def index
    @projects = policy_scope(Project)
    render json: ProjectSerializer.new(@projects, include: [:tasks]).serialized_json
  end

  def create
    # @user = authorize User.find_by(username: params[:username])
    @project = Project.new(project_params)

    @project.user = current_user

    if @project.save
      render json: ProjectSerializer.new(@project, include: [:tasks]).serialized_json
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    authorize @project, :update?

    if @project.update_attributes(project_params)
      render json: ProjectSerializer.new(@project, include: [:tasks]).serialized_json
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @project, :destroy?

    if @project.destroy
      render json: ProjectSerializer.new(@project, include: [:tasks]).serialized_json
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
