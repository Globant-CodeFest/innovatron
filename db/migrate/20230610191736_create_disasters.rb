class CreateDisasters < ActiveRecord::Migration[7.0]
  def change
    create_table :disasters do |t|
      t.integer :year
      t.integer :seq
      t.string :glide
      t.string :disaster_group
      t.string :disaster_subgroup
      t.string :disaster_type
      t.string :disaster_subtype
      t.string :disaster_sub_sub_type
      t.string :event_name
      t.string :country
      t.string :iso
      t.string :region
      t.string :continent
      t.string :location
      t.string :origin
      t.string :associated_dis
      t.string :associated_dis2
      t.string :ofda_response
      t.string :appeal
      t.string :declaration
      t.string :aid_contribution
      t.integer :dis_mag_value
      t.string :dis_mag_scale
      t.string :latitude
      t.string :longitude
      t.string :local_time
      t.string :river_basin
      t.integer :start_year
      t.integer :start_month
      t.integer :start_day
      t.integer :end_year
      t.integer :end_month
      t.integer :end_day
      t.integer :total_deaths
      t.integer :no_injured
      t.integer :no_affected
      t.integer :no_homeless
      t.integer :total_affected
      t.integer :insured_damages
      t.integer :total_damages
      t.integer :cpi
      t.string :adm_level
      t.string :admin1_code
      t.string :admin2_code
      t.string :geo_locations

      t.timestamps
    end
  end
end
