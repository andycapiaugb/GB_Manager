class EvaluationsController < ApplicationController
  def new
    @contract = Contract.find(params[:contract_id])
    @evaluation = Evaluation.new
  end

  def create
    @contract = Contract.find(params[:contract_id])
    @evaluation = @contract.evaluations.build(params[:evaluation])
    if @contract.save
      flash[:notice]
      redirect_to employees_url
    end
  end
end
