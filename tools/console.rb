require_relative '../config/environment.rb'

u1 = User.new
u2 = User.new
u3 = User.new
r1 = Recipe.new
r2 = Recipe.new
r3 = Recipe.new
r4 = Recipe.new
r5 = Recipe.new
r6 = Recipe.new
i1 = Ingredient.new
i2 = Ingredient.new
i3 = Ingredient.new
rc1 = RecipeCard.new("December 19th", r1, u1)
rc1.rating = 5
rc2 = RecipeCard.new("December 13th", r2, u1)
rc2.rating = 3
rc3 = RecipeCard.new("December 19th", r3, u1)
rc3.rating = 4
rc4 = RecipeCard.new("December 19th", r4, u1)
rc4.rating = 5
rc5 = RecipeCard.new("December 19th", r5, u1)
rc5.rating = 1
rc6 = RecipeCard.new("December 19th", r6, u1)
rc6.rating = 2
rc7 = RecipeCard.new("December 20th", r2, u2)
rc8 = RecipeCard.new("December 18th", r1, u3)
rc9 = RecipeCard.new("December 18th", r1, u2)
ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r1, i2)
ri3 = RecipeIngredient.new(r2, i3)
al1 = Allergen.new(u1, i1)
al2 = Allergen.new(u2, i2)
al3 = Allergen.new(u3, i2)





binding.pry
