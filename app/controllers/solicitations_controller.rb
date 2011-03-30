class SolicitationsController < ApplicationController
  def index
    @solicitations = Solicitation.all
  end

  def new
    @solicitation = Solicitation.new
  end

  def create
    @solicitation = Solicitation.new(params[:solicitation])
    if @solicitation.save
      flash[:notice] = "Saved :)"
      redirect_to employees_url
    end
  end
end
