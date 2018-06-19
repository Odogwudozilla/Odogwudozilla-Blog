class AddRolesToOdogwus < ActiveRecord::Migration[5.1]
  def change
    add_column :odogwus, :superadmin_role, :boolean, default: false
    add_column :odogwus, :junioradmin_role, :boolean, default: false
    add_column :odogwus, :user_role, :boolean, default: true
  end
end
