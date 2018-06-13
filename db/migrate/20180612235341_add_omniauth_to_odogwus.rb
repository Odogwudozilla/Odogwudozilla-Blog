class AddOmniauthToOdogwus < ActiveRecord::Migration[5.1]
  def change
    add_column :odogwus, :provider, :string
    add_index :odogwus, :provider
    add_column :odogwus, :uid, :string
    add_index :odogwus, :uid
  end
end
