class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to root_path, notice: "The world is a better place!! Kitten created successfully!"
    else
      render :new, status: :unprocessable_entity, notice: "Something went wrong, please try again, there is no kitten... yet."
    end
  end

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @kitten }
    end
  end
  
  def update
    if @kitten.update(kitten_params)
      redirect_to root_path, notice: "Kitten is happy with your updates."
    else
      render :edit, status: :unprocessable_entity, notice: "Something went wrong, please try again, the kitten is waiting..."
    end
  end

  def edit
  end

  def destroy
    @kitten.destroy
    redirect_to root_path, notice: "You are a monster! You have destroyed the kitten!"
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :softness, :cuteness)
  end

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

end
