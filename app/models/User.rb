class User

@@all = []

def initialize()
  @@all << self

end

def recipe_cards
  RecipeCard.all.select do |recipe_card|
    recipe_card.user == self
  end
end

def recipes
  recipe_cards.map do |recipe_card|
    recipe_card.recipe
  end
end

def user_allergens
  Allergen.all.select do |allergen|
    allergen.user == self
  end
end

def allergens
  user_allergens.map do |user_allergen|
    user_allergen.ingredient
  end
end

def add_recipe_card(recipe, date, rating)
  rc = RecipeCard.new(date, recipe, self)
  rc.rating = rating
end

def declare_allergen(ingredient)
  Allergen.new(self, ingredient)
end

def self.all
  @@all
end

def top_three_recipes
  sorted_recipe_cards = recipe_cards.sort_by {|recipe_card| recipe_card.rating}
  top_three_recipe_cards = sorted_recipe_cards.last(3)
  top_three_recipe_cards.map do |recipe_card|
    recipe_card.recipe
  end
end

end
