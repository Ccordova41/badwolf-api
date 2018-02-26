class AddJobToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :job, :string
  end
end
