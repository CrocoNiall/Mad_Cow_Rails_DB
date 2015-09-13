class PersonController < ApplicationController


  def index
    @title = 'Victim Directory'
    @people = Person.all

  end
  def show
    @title = 'Victim'
    @person = Person.find(params[:id])
    @attacks = Attack.where(person_id: @person.id)
    
  end

  def new
    @person = Person.new
    render :new
  end

  def create
    person = Person.new(Person_params)
    
    if cow.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])

    if person.update(person_params)
      redirect_to person
    else
      render :edit
    end
  end

  def destroy
    person = Person.find(params[:id]).destroy

    redirect_to '/person'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age)
  end
end
