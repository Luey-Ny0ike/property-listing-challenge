module Types
  class MutationType < Types::BaseObject
    field :create_property, mutation: Mutations::CreateProperty
  end
end
