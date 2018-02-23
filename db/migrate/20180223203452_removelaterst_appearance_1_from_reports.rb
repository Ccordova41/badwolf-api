class RemovelaterstAppearance1FromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :laterst_appearance, :string
  end
end
