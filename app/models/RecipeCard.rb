class RecipeCard

attr_accessor :date, :rating, :recipe, :user

@@all = []

def initialize(date, recipe, user)
  @date = date
  @recipe = recipe
  @user = user

  @rating = 0
  @@all << self

  end

def self.all
  @@all
end

end
