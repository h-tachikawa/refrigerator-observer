module Mutations
  class CreateFood < BaseMutation
    field :food, Types::FoodType, null: false

    argument :name, String, required: true
    argument :expiration_date, GraphQL::Types::ISO8601DateTime, required: true
    argument :special_notes, String, required: false

    def resolve(**params)
      food = Food.create!(params)
      { food: food }
    end
  end
end
