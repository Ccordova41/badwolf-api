class AddFirstAppearanceToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :first_appearance, :string
  end
end
