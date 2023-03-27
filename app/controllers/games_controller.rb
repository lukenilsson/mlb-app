class GamesController < ApplicationController
  require "rest-client"
  require "json"

  def get_info
    url = "https://statsapi.mlb.com/api/v1/schedule/games/?sportId=1"
    response = RestClient.get(url)
    data = JSON.parse(response.body)

    games = data["dates"][0]["games"]

    @game_data = games.map do |game|
      {
        game_date: game["officialDate"],
        home_team: game["teams"]["home"]["team"]["name"],
        away_team: game["teams"]["away"]["team"]["name"],
        game_venue: game["venue"]["name"],
      }
    end

    # render json: game_data.as_json
    render template: "games/get_info"
  end
end
