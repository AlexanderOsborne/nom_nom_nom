class CookBook
    attr_reader :recipes

    def initialize
        @recipes = []
    end

    def add_recipe(recipe)
        @recipes << recipe
    end

    def ingredients
        noms = []
        @recipes.each do |recipe|
            recipe.ingredients.each do |ingredient|
            noms << ingredient.name
            end
        end
        noms.uniq
    end

    def highest_calorie_meal
        @recipes.max_by do |recipe|
            recipe.total_calories
        end
    end
end