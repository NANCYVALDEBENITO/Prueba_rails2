class AddCompleteToAssigments < ActiveRecord::Migration[5.2]
  def change
    add_column :assigments, :complete, :boolean, default: false
  end
end
