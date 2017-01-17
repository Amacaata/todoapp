class AllocatedTimesController < ApplicationController
  before_action :set_allocated_time, only: [:show, :edit, :update, :destroy]

  # GET /allocated_times
  # GET /allocated_times.json
  def index
    @allocated_times = AllocatedTime.all
  end

  # GET /allocated_times/1
  # GET /allocated_times/1.json
  def show
  end

  # GET /allocated_times/new
  def new
    @allocated_time = AllocatedTime.new
  end

  # GET /allocated_times/1/edit
  def edit
  end

  # POST /allocated_times
  # POST /allocated_times.json
  def create
    @allocated_time = AllocatedTime.new(allocated_time_params)

    respond_to do |format|
      if @allocated_time.save
        format.html { redirect_to @allocated_time, notice: 'Allocated time was successfully created.' }
        format.json { render :show, status: :created, location: @allocated_time }
      else
        format.html { render :new }
        format.json { render json: @allocated_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocated_times/1
  # PATCH/PUT /allocated_times/1.json
  def update
    respond_to do |format|
      if @allocated_time.update(allocated_time_params)
        format.html { redirect_to @allocated_time, notice: 'Allocated time was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocated_time }
      else
        format.html { render :edit }
        format.json { render json: @allocated_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocated_times/1
  # DELETE /allocated_times/1.json
  def destroy
    @allocated_time.destroy
    respond_to do |format|
      format.html { redirect_to allocated_times_url, notice: 'Allocated time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocated_time
      @allocated_time = AllocatedTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocated_time_params
      params.require(:allocated_time).permit(:task_id, :user_id, :done, :start, :end, :notes)
    end
end
