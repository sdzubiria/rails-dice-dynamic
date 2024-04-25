Rails.application.routes.draw do
  root "dice#homepage"

  get "/dice/:number_of_dice/:how_many_sides", to: "dice#roll"
end
