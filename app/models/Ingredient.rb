class Ingredient

  @@all = []

def initialize()
  @@all << self

end

def self.all
 @@all
end

def allergens
  Allergen.all.select do |allergen|
    allergen.ingredient == self
  end
end

def allergic_users
  allergens.map do |allergen|
    allergen.user
  end
end

def self.most_common_allergen
  allergic_users_count = @@all.map do |ingredient|
    ingredient.allergic_users.count
  end
  max_count = allergic_users_count.max
  max_index = allergic_users_count.index(max_count)
  @@all[max_index]
end

end
