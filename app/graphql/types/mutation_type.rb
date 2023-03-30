module Types
  class MutationType < Types::BaseObject
    field :create_property, mutation: Mutations::CreateProperty
    field :delete_property, mutation: Mutations::DeleteProperty
  end
end
