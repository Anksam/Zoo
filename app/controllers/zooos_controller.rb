class ZooosController < ApplicationController
  before_action :set_zooo, only: [:show, :edit, :update, :destroy]

  # GET /zooos
  def index
    @zooos = Zooo.all
  end

  # GET /zooos/1
  def show
  end

  # GET /zooos/new
  def new
    @zooo = Zooo.new
  end

  # GET /zooos/1/edit
  def edit
  end

  # POST /zooos
  def create
    @zooo = Zooo.new(zooo_params)

    if @zooo.save
      redirect_to @zooo, notice: 'Zooo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /zooos/1
  def update
    if @zooo.update(zooo_params)
      redirect_to @zooo, notice: 'Zooo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /zooos/1
  def destroy
    @zooo.destroy
    redirect_to zooos_url, notice: 'Zooo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zooo
      @zooo = Zooo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def zooo_params
      params.require(:zooo).permit(:name, :city, :zipcode, :published)
    end
end
