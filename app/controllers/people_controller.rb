class PeopleController < ApplicationController
  def index

  end

  def show

  end

  def new
    @person = Person.new
  end

  def create

  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      flash[:notice] = "Update successful"
      redirect_to employees_url
    end
  end
end
