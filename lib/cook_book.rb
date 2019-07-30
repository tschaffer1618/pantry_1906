class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    @recipes.map do |recipe|
      recipe_hash = Hash.new
      recipe_hash[:name] = recipe.name
      details = Hash.new
      details[:ingredients] = [recipe.ingredients_required]
      details[:total_calories] = recipe.total_calories
      recipe_hash[:details] = details
    end
  end

end
