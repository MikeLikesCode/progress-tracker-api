module Types
  class MutationType < Types::BaseObject

    field :create_progress_info, Types::ProgressInfosType, description: "Create a new progress info", mutation: Mutations::CreateProgressInfo


    field :update_progress_info, Boolean, null: false, description: "Update a progress info" do 
      argument :task, Types::ProgressInfosInputType, required: true
    end

    def update_progress_info(task:)
      existing = ProgressInfo.find(task[:id])
      existing.update(task.to_h)
    end
    
  end
end
