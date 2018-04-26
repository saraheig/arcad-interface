class InstrumentsGroupsController < AuthenticateController
  before_action :set_instruments_group, only: [:show, :edit, :update, :destroy]

  # GET /instruments_groups
  # GET /instruments_groups.json
  def index
    @instruments_groups = InstrumentsGroup.all
  end

  # GET /instruments_groups/1
  # GET /instruments_groups/1.json
  def show
  end

  # GET /instruments_groups/new
  def new
    @instruments_group = InstrumentsGroup.new
  end

  # GET /instruments_groups/1/edit
  def edit
  end

  # POST /instruments_groups
  # POST /instruments_groups.json
  def create
    @instruments_group = InstrumentsGroup.new(instruments_group_params)

    respond_to do |format|
      if @instruments_group.save
        format.html { redirect_to @instruments_group, notice: 'La catégorie d\'instruments a été créée.' }
        format.json { render :show, status: :created, location: @instruments_group }
      else
        format.html { render :new }
        format.json { render json: @instruments_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments_groups/1
  # PATCH/PUT /instruments_groups/1.json
  def update
    respond_to do |format|
      if @instruments_group.update(instruments_group_params)
        format.html { redirect_to @instruments_group, notice: 'La catégorie d\'instruments a été mise à jour.' }
        format.json { render :show, status: :ok, location: @instruments_group }
      else
        format.html { render :edit }
        format.json { render json: @instruments_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments_groups/1
  # DELETE /instruments_groups/1.json
  def destroy
    @instruments_group.destroy
    respond_to do |format|
      format.html { redirect_to instruments_groups_url, notice: 'La catégorie d\'instruments a été supprimée.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruments_group
      @instruments_group = InstrumentsGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instruments_group_params
      params.require(:instruments_group).permit(:name_ch, :name_fr, :abbrev_ch, :abbrev_fr, :description, :country, :law, :plan, :appeal_proc, :descr_appeal_proc)
    end
end
