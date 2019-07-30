class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    summary_array = []
    @recipes.each do |recipe|
      recipe_hash = Hash.new
      recipe_hash[:name] = recipe.name
      recipe_hash[:details] = Hash.new
      recipe_hash[:details][:ingredients] = Array.new
      recipe.ingredients_required.each do |ingredient, amount|
        ingredient_hash = Hash.new
        ingredient_hash[:ingredient] = ingredient.name
        ingredient_hash[:amount] = amount.to_s + " " + ingredient.unit
        recipe_hash[:details][:ingredients] << ingredient_hash
      end
      recipe_hash[:details][:total_calories] = recipe.total_calories
      summary_array << recipe_hash
    end
    summary_array
  end
end
