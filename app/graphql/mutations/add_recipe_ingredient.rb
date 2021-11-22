class Mutations::AddRecipeIngredient < Mutations::BaseMutation
  argument :recipe_id, ID, required: true
  argument :ingredient_id, ID, required: true
  argument :amount, Int, required: true
  argument :unit, String, required: true

  field :recipe, Types::RecipeType, null: true
  field :recipe_ingredient, Types::RecipeIngredientType, null: true
  field :errors, [String], null: false

  def resolve(recipe_id:, ingredient_id:, amount:, unit:)
    r = Recipe.find(recipe_id)
    i = Ingredient.find(ingredient_id)
    ri = RecipeIngredient.new(recipe: r, ingredient: i, amount: amount, unit: unit)

    if ri.save
      {
        recipe: r,
        recipe_ingredient: ri,
        errors: []
      }
    else
      {
        recipe: nil,
        recipe_ingredient: nil,
        errors: ri.errors.full_messages
      }
    end
  end
end