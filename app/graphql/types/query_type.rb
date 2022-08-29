module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    
    field :progress_info, Types::ProgressInfosType, null: true, 
      description: "Banana" do
      argument :id, ID, required: true
    end
    def progress_info(id:)
      ProgressInfo.where(id: id).first
    end

    field :tasks, [Types::ProgressInfosType], null: false, description: "All tasks"

    def tasks
      ProgressInfo.all
    end

  end
end
