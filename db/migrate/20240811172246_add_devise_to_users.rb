class AddDeviseToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      # Add checks to avoid duplicate columns
      unless column_exists?(:users, :sign_in_count)
        t.integer :sign_in_count, default: 0, null: false
      end
      # Add other Devise columns similarly
    end
  end
end
