module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :recipes, [Types::RecipeType], null: false, description: "Retrieve all recipes"
    field :recipe, Types::RecipeType, null: false, description: "Retrieve a single recipe" do
      argument :id, ID, required: true
    end

    def recipe(id:)
      Recipe.find(id)
    end

    def recipes
      Recipe.all
    end
  end
end
