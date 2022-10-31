Rails.application.routes.draw do
  get "/random_fortune", controller: "my_examples", action: "random_fortune"

  get "/random_numbers", controller: "my_examples", action: "random_numbers"

  get "/bottles_of_beer", controller: "my_examples", action: "bottles_of_beer"
end
