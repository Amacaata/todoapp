class UserInTeamsController < ApplicationController
  before_action :set_user_in_team, only: [:show, :edit, :update, :destroy]

  # GET /user_in_teams
  # GET /user_in_teams.json
  def index
    @user_in_teams = UserInTeam.all
  end

  # GET /user_in_teams/1
  # GET /user_in_teams/1.json
  def show
  end

  # GET /user_in_teams/new
  def new
    @user_in_team = UserInTeam.new
  end

  # GET /user_in_teams/1/edit
  def edit
  end

  # POST /user_in_teams
  # POST /user_in_teams.json
  def create
    @user_in_team = UserInTeam.new(user_in_team_params)

    respond_to do |format|
      if @user_in_team.save
        format.html { redirect_to @user_in_team, notice: 'User in team was successfully created.' }
        format.json { render :show, status: :created, location: @user_in_team }
      else
        format.html { render :new }
        format.json { render json: @user_in_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_in_teams/1
  # PATCH/PUT /user_in_teams/1.json
  def update
    respond_to do |format|
      if @user_in_team.update(user_in_team_params)
        format.html { redirect_to @user_in_team, notice: 'User in team was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_in_team }
      else
        format.html { render :edit }
        format.json { render json: @user_in_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_in_teams/1
  # DELETE /user_in_teams/1.json
  def destroy
    @user_in_team.destroy
    respond_to do |format|
      format.html { redirect_to user_in_teams_url, notice: 'User in team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_in_team
      @user_in_team = UserInTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_in_team_params
      params.require(:user_in_team).permit(:user_id, :team_id)
    end
end
