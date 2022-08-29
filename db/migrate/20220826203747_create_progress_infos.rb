class CreateProgressInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :progress_infos do |t|
      t.string :task
      t.text :description
      t.boolean :is_complete

      t.timestamps
    end
  end
end
