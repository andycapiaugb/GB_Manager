class EvaluationsController < ApplicationController
  def new
    @contract = Contract.find(params[:id])
  end
end
