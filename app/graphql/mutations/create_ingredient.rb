class Mutations::CreateIngredient < Mutations::BaseMutation
  argument :name, String, required: true

  field :ingredient, Types::IngredientType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    ingredient = Ingredient.new(name: name)

    if ingredient.save
      {
        ingredient: ingredient,
        errors: []
      }
    else
      {
        ingredient: nil,
        errors: ingredient.errors.full_messages
      }
    end
  end
end