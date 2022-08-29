class Types::CategoriesType < Types:: BaseObject

  field :category_name, String, null: false
  field :category_description, String, null: false
  field :category_created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :category_updated_at, GraphQL::Types::ISO8601DateTime, null: false

  def category_name
    object[:category_name]
  end
end