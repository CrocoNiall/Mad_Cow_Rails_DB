class AttackController < ApplicationController


  def index
    @attacks = Attack.all

  end

  def show
    @attack = Attack.find(params[:id])
    @localAttacks = Attack.where(location: @attack.location)
  end

   def new
    @attack = Attack.new
    render :new
  end

  def create
    attack = Attack.new(attack_params)
    
    if attack.save
      redirect_to '/attack'
    else
      render :new
    end
  end

  def edit
    @attack = Attack.find(params[:id])
  end

  def update
    attack = Attack.find(params[:id])

    if attack.update(attack_params)
      redirect_to attack
    else
      render :edit
    end
  end

  def destroy
    cow = Attack.find(params[:id]).destroy

    redirect_to '/attack'
  end

    private
  def attack_params
    params.require(:attack).permit(:location, :rating, :person_id, :cow_id)
  end


end
