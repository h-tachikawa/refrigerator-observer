module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :food, [Types::FoodType], null: false do
      description '食品情報'
    end

    def food
      Food.all
    end
  end
end
