class CowController < ApplicationController


  def index
    @title = 'Home'
    @cows = Cow.all

  end


  def show
    @title = 'Have you seen this Cow?'
    @cow = Cow.find(params[:id])
    @attacks = Attack.where(cow_id: @cow.id)
    
  end



end