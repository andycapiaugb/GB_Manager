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
      @contract.replaces!(Contract.find(params[:replaced_contract][:id]))
      flash[:notice] = "Contract saved :)"
      redirect_to employees_url
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    
  end
end
