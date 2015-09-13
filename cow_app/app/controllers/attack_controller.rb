class AttackController < ApplicationController


  def index
    @attacks = Attack.all

  end

  def show
    @attack = Attack.find(params[:id])
    @localAttacks = Attack.where(location: @attack.location)
  end


end
