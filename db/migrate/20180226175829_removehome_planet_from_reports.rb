class RemovehomePlanetFromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :home_planet, :string
  end
end
