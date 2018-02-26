class RemovefirstAppearanceFromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :first_appearance, :string
  end
end
