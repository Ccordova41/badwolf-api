class AddLaterstAppearanceToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :laterst_appearance, :string
  end
end
