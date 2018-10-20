class StatesController < ApplicationController
    def create
        @project = Project.find(params[:project_id])
        @state = @project.states.new(state_params)
        if @state.save
            flash[:notice] = "Status zu Projekt hinzugefügt!"
            redirect_to project_path(@project)
        else
            flash[:notice] = "Status konnte nicht zu Projekt hinzugefügt!"
            redirect_to project_path(@project)
        end
    end

    private
    def state_params
        params.require(:state).permit(:text)
    end
end
