class Mutations::CreateProgressInfo < GraphQL::Schema::Mutation

  null true

  argument :task, Types::ProgressInfosInputType, required: true

  def resolve(task:)
    ProgressInfo.create task.to_h
  end

end