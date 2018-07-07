class AddOdogwuBioToOdogwus < ActiveRecord::Migration[5.1]
  def change
    add_column :odogwus, :bio, :text
  end
end
