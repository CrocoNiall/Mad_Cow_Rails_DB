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

  def new
    @cow = Cow.new
    render :new
  end

  def create
    cow = Cow.new(cow_params)
    
    if cow.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @cow = Cow.find(params[:id])
  end

  def update
    cow = Cow.find(params[:id])

    if cow.update(cow_params)
      redirect_to cow
    else
      render :edit
    end
  end

  def destroy
    cow = Cow.find(params[:id]).destroy

    redirect_to '/cow'
  end

  private
  def cow_params
    params.require(:cow).permit(:name, :age)
  end

end