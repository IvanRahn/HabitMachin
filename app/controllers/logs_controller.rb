class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /logs
  # GET /logs.json
  def index
    @logs = current_user.logs.as_json
  end

  def hash
    @habits = current_user.habits
    @habits_hash = Hash.new
    @habits.each do |habit|
      @habits_hash[habit.position] = habit.symbol
    end
  end

  # GET /logs/1
  # GET /logs/1.json
  def show
  end

  # GET /logs/new
  def new
    @log = Log.new
    hash
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /logs
  # POST /logs.json
  def create
    @log = Log.new(log_params)
    @log.date = Date.today
    @log.user_id = current_user.id
    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: "Log was successfully created." }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs/1
  # PATCH/PUT /logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: "Log was successfully updated." }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: "Log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_log
    @log = Log.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def log_params
    params.require(:log).permit(:date, :user_id, :h1, :h2, :h3, :h4, :h5, :h6, :h7, :h8, :h9, :h10, :h11, :h12, :waking_time, :sleep_time, :image, :content)
  end
end
