class ProgressInfo < ApplicationRecord
  def name_and_status
    "Welcome, today's task is: #{task}. Here is your current status on it: #{is_complete}."
  end

 def categories
   [{ category_name: "Category1"}, { category_name: "Category2"}]
 end
end
