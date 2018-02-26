class RemovelatestAppearanceFromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :latest_appearance, :string

  end
end
