class Recipe

@@all = []

def initialize()

  @@all << self
end

def self.all
  @@all
end

def recipe_cards
  RecipeCard.all.select do |recipe_card|
    recipe_card.recipe == self
  end
end

def users
  recipe_cards.map do |recipe_card|
    recipe_card.user
  end
end

def recipe_ingredients
  RecipeIngredient.all.select do |recipe_ingredient|
    recipe_ingredient.recipe == self
  end
end

def ingredients
  recipe_ingredients.map do |recipe_ingredient|
    recipe_ingredient.ingredient
  end
end

def add_ingredients(ingredients_arr)
  ingredients_arr.each do |ingredient|
    RecipeIngredient.new(self ,ingredient)
  end
end

def self.most_popular
  recipe_cards_count = @@all.map do |recipe|
    recipe.recipe_cards.count
  end
  max_count = recipe_cards_count.max
  max_index = recipe_cards_count.index(max_count)
  @@all[max_index]
end
end
