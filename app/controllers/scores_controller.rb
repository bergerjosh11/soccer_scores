class ScoresController < ApplicationController
    def index
        @leagues = HTTParty.get('https://api.football-data.org/v2/competitions', headers: { 'X-Auth-Token' => 'YOUR_API_KEY' }).parsed_response['competitions']
    end
    
    def show
        @league_id = params[:league_id]
        @scores = HTTParty.get("https://api.football-data.org/v2/competitions/#{@league_id}/matches", headers: { 'X-Auth-Token' => 'YOUR_API_KEY' }).parsed_response['matches']
      end
    
    def new
      # code for new action
    end
    
    def create
      # code for create action
    end
    
    def edit
      # code for edit action
    end
    
    def update
      # code for update action
    end
    
    def destroy
      # code for destroy action
    end
  end
  