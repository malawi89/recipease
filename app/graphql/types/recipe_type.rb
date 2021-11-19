module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :meal, String, null: true
    field :url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
