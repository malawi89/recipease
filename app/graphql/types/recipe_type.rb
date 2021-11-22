module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :meal, String, null: false
    field :url, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
