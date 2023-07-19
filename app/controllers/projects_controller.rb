class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects, only: [:id, :title, :description]
    end

    def show
        project = Project.find_by(id: params[:id])
        render json: project
    end

    def create
        project = Project.create(project_params)
        render json: project, status: :created
    end

    def update
        project = Project.find_by(id: params[:id])
        if project
            project.update(project_params)
            render json: project
        else
            render json: { error: "Project not found" }, status: :not_found
        end
    end

    def destroy
        project = Project.find_by(id: params[:id])
        if project
            project.destroy
            head :no_content
        else
            render json: { error: "Project not found" }, status: :not_found
        end
    end

    private

    def project_params
        params.permit(:title, :description)
    end

end