module Types
  class FoodType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :expiration_date, GraphQL::Types::ISO8601DateTime, null: false
    field :special_notes, String, null: true

    def expiration_date
      object.expiration_date.in_time_zone('Asia/Tokyo')
    end
  end
end
