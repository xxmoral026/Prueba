class Events2sController < ApplicationController
  before_action :set_events2, only: [:show, :edit, :update, :destroy]

  # GET /events2s
  # GET /events2s.json
  def index
    @events2s = Events2.all
  end

  # GET /events2s/1
  # GET /events2s/1.json
  def show
  end

  # GET /events2s/new
  def new
    @events2 = Events2.new
  end

  # GET /events2s/1/edit
  def edit
  end

  # POST /events2s
  # POST /events2s.json
  def create
    @events2 = Events2.new(events2_params)

    respond_to do |format|
      if @events2.save
        format.html { redirect_to @events2, notice: 'Events2 was successfully created.' }
        format.json { render :show, status: :created, location: @events2 }
      else
        format.html { render :new }
        format.json { render json: @events2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events2s/1
  # PATCH/PUT /events2s/1.json
  def update
    respond_to do |format|
      if @events2.update(events2_params)
        format.html { redirect_to @events2, notice: 'Events2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @events2 }
      else
        format.html { render :edit }
        format.json { render json: @events2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events2s/1
  # DELETE /events2s/1.json
  def destroy
    @events2.destroy
    respond_to do |format|
      format.html { redirect_to events2s_url, notice: 'Events2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events2
      @events2 = Events2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events2_params
      params.require(:events2).permit(:title, :start, :end)
    end
end
