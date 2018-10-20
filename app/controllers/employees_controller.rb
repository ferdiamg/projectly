class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @projects = Project.all
  end

    def create
      @employee = Employee.new(employee_params)

      if @employee.save
          flash[:notice] = "Neuer Mitarbeiter erstellt!"
          redirect_to :root
      else
          flash[:notice] = "Neuer Mitarbeiter konnte nicht erstellt werden!"
          render :new
      end
    end

    def edit
      @employee = Employee.find(params[:id])
    end

    def update
      @employee = Employee.find(params[:id])
      if @employee.update(employee_params)
        flash[:notice] = "Mitarbeiter aktualisiert!"
        redirect_to :root
      else
        flash[:notice] = "Mitarbeiter konnte nicht aktualisiert werden!"
        redirect_to action: :edit
      end
    end

    def destroy
      @employee = Employee.find(params[:id])
      if @employee.destroy
        flash[:notice] = "Mitarbeiter #{@employee.name} gelöscht!"
        redirect_to :root
      else
        flash[:notice] = "Mitarbeiter konnte nicht gelöscht werden!"
        redirect_to :root
      end
    end

    private
    def employee_params
      params.require(:employee).permit(:name, :email)
    end

    def project_params
      params.require(:project).permit(:name)
    end
end
