class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(params[:contract])
    if @contract.save
      flash[:notice] = "Contract saved :)"
      redirect_to employee_url(@contract.employee)
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    if @contract.update_attributes(params[:contract])
      flash[:notice] = "Contract updated :)"
      redirect_to employee_url(@contract.employee)
    end
  end
end
