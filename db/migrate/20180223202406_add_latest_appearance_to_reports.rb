class AddLatestAppearanceToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :latest_appearance, :string
  end
end
