json.array! @games.each do |game|
  json.id game.id
  json.character game.character
  json.house game.house
  json.city game.city 
end