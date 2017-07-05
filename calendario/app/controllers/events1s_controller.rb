class Events1sController < ApplicationController
  before_action :set_events1, only: [:show, :edit, :update, :destroy]

  # GET /events1s
  # GET /events1s.json
  def index
    @events1s = Events1.all
  end

  # GET /events1s/1
  # GET /events1s/1.json
  def show
  end

  # GET /events1s/new
  def new
    @events1 = Events1.new
  end

  # GET /events1s/1/edit
  def edit
  end

  # POST /events1s
  # POST /events1s.json
  def create
    @events1 = Events1.new(events1_params)

    respond_to do |format|
      if @events1.save
        format.html { redirect_to @events1, notice: 'Events1 was successfully created.' }
        format.json { render :show, status: :created, location: @events1 }
      else
        format.html { render :new }
        format.json { render json: @events1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events1s/1
  # PATCH/PUT /events1s/1.json
  def update
    respond_to do |format|
      if @events1.update(events1_params)
        format.html { redirect_to @events1, notice: 'Events1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @events1 }
      else
        format.html { render :edit }
        format.json { render json: @events1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events1s/1
  # DELETE /events1s/1.json
  def destroy
    @events1.destroy
    respond_to do |format|
      format.html { redirect_to events1s_url, notice: 'Events1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events1
      @events1 = Events1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events1_params
      params.require(:events1).permit(:title, :start, :end)
    end
end
