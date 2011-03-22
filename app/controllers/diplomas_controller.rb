class DiplomasController < ApplicationController
  def index
    @diplomas = Diploma.all
  end

  def show

  end

  def new
    @diploma = Diploma.new
  end

  def create
    @diploma = Diploma.new(params[:diploma])
    if @diploma.save
      redirect_to employees_url
    end
  end
end
