class AddUniqueIndexToCourses < ActiveRecord::Migration[6.0]
  def change
    add_index :courses, [:name, :price], unique: true
  end
end
