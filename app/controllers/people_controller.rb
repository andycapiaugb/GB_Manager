class PeopleController < ApplicationController
  def index

  end

  def show

  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      flash[:notice] = "Person created :)"
      redirect_to employees_url
    end
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
