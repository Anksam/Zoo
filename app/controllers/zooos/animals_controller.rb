require 'pixabay_api.rb'

class Zooos::AnimalsController < ApplicationController
  before_action :set_zooo, except: [:new, :create]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animals
  def index
    @animals = @zooo.animals
  end

  # GET /animals/1
  def show
  end

  # GET /animals/new
  def new
    #@animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      image = PixabayApi.complete_path(@animal.name, @animal.animal_type)
      @animal.update_attribute :image, image
      redirect_to root_path, notice: 'Animal was successfully Added.'
    else
      render :new, notice: 'Oops try again!.'
    end
  end

  # PATCH/PUT /animals/1
  def update
    if @animal.update(animal_params)
      redirect_to root_path, notice: 'Animal data was successfully updated.'
    else
      render :edit, notice: 'Oops try again!.'
    end
  end

  # DELETE /animals/1
  def destroy
    @animal.destroy
    redirect_to root_path, notice: 'Animal was successfully removed from zoo.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zooo
      @zooo = Zooo.find(params[:zooo_id])
    end

    def set_animal
      @animal = @zooo.animals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_params
      params.require(:animal).permit(:name, :animal_type, :zooo_id)
    end
end
