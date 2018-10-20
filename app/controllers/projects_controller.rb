class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
        @state = State.new
    end

    def new
        @project = Project.new
        @employees = Employee.all
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            flash[:notice] = "Neues Projekt erstellt!"
            redirect_to :root
        else
            flash[:notice] = "Neues Projekt konnte nicht erstellt werden!"
            render :new
        end
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        if @project.update(project_params)
            flash[:notice] = "Projekt aktualisiert!"
            redirect_to :root
        else
            flash[:notice] = "Projekt konnte nicht aktualisiert werden!"
            redirect_to action: :edit
        end
    end

    def destroy
        @project = Project.find(params[:id])
        if @project.destroy
            flash[:notice] = "Projekt gelöscht!"
            redirect_to :root
        else
            flash[:notice] = "Projekt konnte nicht gelöscht werden!"
            redirect_to :root
        end
    end

    private
    def project_params
        params.require(:project).permit(:name, :employee_id)
    end

    def employee_params
        params.require(:employee).permit(:name)
    end
end
