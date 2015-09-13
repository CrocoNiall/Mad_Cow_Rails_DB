class AttackController < ApplicationController


  def index
    @attacks = Attack.all

  end


end
