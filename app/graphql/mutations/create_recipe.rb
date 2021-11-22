class Mutations::CreateRecipe < Mutations::BaseMutation
  argument :name, String, required: true
  argument :meal, String, required: true
  argument :url, String, required: true

  field :recipe, Types::RecipeType, null: true
  field :errors, [String], null: false

  def resolve(name:, meal:, url:)
    recipe = Recipe.new(name: name, meal: meal, url: url)
    if recipe.save

      {
        recipe: recipe,
        errors: []
      }
    else
      {
        recipe: nil,
        errors: recipe.errors.full_messages
      }
    end
  end
end