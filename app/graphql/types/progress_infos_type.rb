class Types::ProgressInfosType < Types::BaseObject

    description "Progress Info"

    field :id, ID, null: false
    field :task, String, null: true
    field :description, String, null: true
    field :is_complete, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    
    field :name_and_status, String, null:false

    field :categories , [Types::CategoriesType], null: false    
end

class Types::ProgressInfosInputType < GraphQL::Schema::InputObject
    graphql_name "ProgressInfosInputType"
    description "Progress Info Input/Update"

    argument :id, ID, required:false
    argument :task, String, required: false
    argument :description, String, required: false
    argument :is_complete, Boolean, required: false
end