class AddFactToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :fact, :string
  end
end
