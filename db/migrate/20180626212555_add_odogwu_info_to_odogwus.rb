class AddOdogwuInfoToOdogwus < ActiveRecord::Migration[5.1]
  def change
    add_column :odogwus, :username, :string, unique: true
    add_column :odogwus, :firstname, :string
    add_column :odogwus, :lastname, :string
  end
end
