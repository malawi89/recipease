module Types
  class RecipeIngredientType < Types::BaseObject
    field :id, ID, null: false
    field :recipe_id, Integer, null: false
    field :ingredient_id, Integer, null: false
    field :amount, Integer, null: true
    field :unit, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
