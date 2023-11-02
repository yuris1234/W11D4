class Api::PokemonController < ApplicationController
    def types
        render json: [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]
    end

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show

    end

end
