module Types
  class MutationType < Types::BaseObject
    field :delete_valuation, mutation: Mutations::DeleteValuation
    field :create_valuation, mutation: Mutations::CreateValuation
    field :delete_furnishing, mutation: Mutations::DeleteFurnishing
    field :create_furnishing, mutation: Mutations::CreateFurnishing
    field :create_property, mutation: Mutations::CreateProperty
    field :delete_property, mutation: Mutations::DeleteProperty
  end
end
