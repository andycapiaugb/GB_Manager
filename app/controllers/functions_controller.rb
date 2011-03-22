class FunctionsController < ApplicationController
  def index
    @functions = Function.all
  end

  def new
    @function = Function.new
  end

  def create
    @function = Function.new(params[:function])
    if @function.save
      flash[:notice] = "Function created :)"
      redirect_to functions_url
    end
  end
end
