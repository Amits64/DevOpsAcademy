class AddDescriptionAndTopicsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :description, :text, if_not_exists: true
    add_column :courses, :topics, :text, if_not_exists: true
  end
end
