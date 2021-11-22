module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_ingredient, mutation: Mutations::CreateIngredient
    field :create_recipe, mutation: Mutations::CreateRecipe
    field :add_recipe_ingredient, mutation: Mutations::AddRecipeIngredient
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
