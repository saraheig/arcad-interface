class ActorsGroupsController < ApplicationController
  before_action :set_actors_group, only: [:show, :edit, :update, :destroy]

  # GET /actors_groups
  # GET /actors_groups.json
  def index
    @actors_groups = ActorsGroup.all
  end

  # GET /actors_groups/1
  # GET /actors_groups/1.json
  def show
  end

  # GET /actors_groups/new
  def new
    @actors_group = ActorsGroup.new
  end

  # GET /actors_groups/1/edit
  def edit
  end

  # POST /actors_groups
  # POST /actors_groups.json
  def create
    @actors_group = ActorsGroup.new(actors_group_params)

    respond_to do |format|
      if @actors_group.save
        format.html { redirect_to @actors_group, notice: 'La catégorie d\'acteurs a été créée.' }
        format.json { render :show, status: :created, location: @actors_group }
      else
        format.html { render :new }
        format.json { render json: @actors_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors_groups/1
  # PATCH/PUT /actors_groups/1.json
  def update
    respond_to do |format|
      if @actors_group.update(actors_group_params)
        format.html { redirect_to @actors_group, notice: 'La catégorie d\'acteurs a été mise à jour.' }
        format.json { render :show, status: :ok, location: @actors_group }
      else
        format.html { render :edit }
        format.json { render json: @actors_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors_groups/1
  # DELETE /actors_groups/1.json
  def destroy
    @actors_group.destroy
    respond_to do |format|
      format.html { redirect_to actors_groups_url, notice: 'La catégorie d\'acteurs a été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actors_group
      @actors_group = ActorsGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actors_group_params
      params.require(:actors_group).permit(:name, :mission, :category, :france, :swiss, :nuts, :administration, :executive, :legislative)
    end
end
