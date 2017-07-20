class SnikksController < ApplicationController
  before_action :set_snikk, only: [:show, :edit, :update, :destroy]

  # GET /snikks
  # GET /snikks.json
  def index
    @snikks = Snikk.all
  end

  # GET /snikks/1
  # GET /snikks/1.json
  def show
  end

  # GET /snikks/new
  def new
    @snikk = current_user.snikks.build
  end

  # GET /snikks/1/edit
  def edit
  end

  # POST /snikks
  # POST /snikks.json
  def create
    @snikk = current_user.snikks.create(snikk_params)

    respond_to do |format|
      if @snikk.save
        format.html { redirect_to @snikk, notice: 'Snikk was successfully created.' }
        format.json { render :show, status: :created, location: @snikk }
      else
        format.html { render :new }
        format.json { render json: @snikk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snikks/1
  # PATCH/PUT /snikks/1.json
  def update
    respond_to do |format|
      if @snikk.update(snikk_params)
        format.html { redirect_to @snikk, notice: 'Snikk was successfully updated.' }
        format.json { render :show, status: :ok, location: @snikk }
      else
        format.html { render :edit }
        format.json { render json: @snikk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snikks/1
  # DELETE /snikks/1.json
  def destroy
    @snikk.destroy
    respond_to do |format|
      format.html { redirect_to snikks_url, notice: 'Snikk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snikk
      @snikk = Snikk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snikk_params
      params.require(:snikk).permit(:body, :user_id)
    end
end
