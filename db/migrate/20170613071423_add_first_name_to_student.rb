class AddFirstNameToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :first_name, :string
    add_column :students, :class_name, :string
    add_column :students, :age, :integer
  end
end
