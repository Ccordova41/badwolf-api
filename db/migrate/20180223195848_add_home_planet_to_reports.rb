class AddHomePlanetToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :home_planet, :string
  end
end
