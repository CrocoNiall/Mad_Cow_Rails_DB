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
end
