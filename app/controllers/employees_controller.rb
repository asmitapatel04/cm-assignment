class EmployeesController < ApplicationController

  before_action :find_employee, except: :index

  def index
    @employees = Employee.all.includes(:department)
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @employee.update(employee_params)
      puts "============success==========="
      redirect_to employees_path
    else
      puts "============success==========="
      render 'edit'
    end
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:department_id)
  end
  
end
