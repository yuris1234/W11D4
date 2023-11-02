json.extract! @pokemon, :image_url, :id, :number, :attack, :defense, :name, :captured, :created_at, :updated_at

json.type @pokemon.poke_type

move_arr = []

@pokemon.moves.each do |move|
    move_arr << move.name
end

json.move move_arr