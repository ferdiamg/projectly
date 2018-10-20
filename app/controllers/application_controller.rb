class ApplicationController < ActionController::Base
    def index
        @employees = Employee.all
        @projects = Project.all
    end
end
