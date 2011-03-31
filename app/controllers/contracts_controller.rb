class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
    @contract.replacements.build
  end

  def create
    @contract = Contract.new(params[:contract])
    if @contract.save
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
