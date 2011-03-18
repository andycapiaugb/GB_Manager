class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:notice] = "Employee saved :)"
      redirect_to employees_url
    else
      @employee = Employee.new
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end
end
