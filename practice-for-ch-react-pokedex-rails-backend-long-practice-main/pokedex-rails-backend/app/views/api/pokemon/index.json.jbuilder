json.array! @pokemons do |pokemon|
    if pokemon.captured == true
        json.extract! pokemon, :id, :number, :name, :image_url, :captured
    else 
        json.extract! pokemon, :id, :number, :name, :captured
        json.image_url "/images/unknown.png"
    end
end
