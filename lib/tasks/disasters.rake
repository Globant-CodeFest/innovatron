require 'csv'

namespace :disasters do

    desc "Disasters"
  
    task import_disaster_data: :environment do

      # https://www.kaggle.com/datasets/brsdincer/all-natural-disasters-19002021-eosdis
      file_path = Rails.public_path.join('disasters.csv')
      
      CSV.foreach(file_path, headers: true) do |row|
        # Accede a los datos de cada fila utilizando los encabezados como claves
        #nombre = row['nombre']
        #edad = row['edad']
        d = Disaster.new
        d.year = row['Year'].to_i
        d.seq = row['Seq'].to_i
        d.glide = row['Glide'].to_s
        d.disaster_group = row['Disaster Group'].to_s
        d.disaster_subgroup = row['Disaster Subgroup'].to_s
        d.disaster_type = row['Disaster Type'].to_s
        d.disaster_subtype = row['Disaster Subtype'].to_s
        d.disaster_sub_sub_type = row['Disaster Subsubtype'].to_s
        d.event_name = row['Event Name'].to_s
        d.country = row['Country'].to_s
        d.iso = row['ISO'].to_s
        d.region = row['Region'].to_s
        d.continent = row['Continent'].to_s
        d.location = row['Location'].to_s
        d.origin = row['Origin'].to_s
        d.associated_dis = row['Associated Dis'].to_s
        d.associated_dis2 = row['Associated Dis2'].to_s
        d.ofda_response = row['OFDA Response'].to_s
        d.appeal = row['Appeal'].to_s
        d.declaration = row['Declaration'].to_s
        d.aid_contribution = row['Aid Contribution'].to_s
        d.dis_mag_value = row['Dis Mag Value'].to_i
        d.dis_mag_scale = row['Dis Mag Scale'].to_s
        d.latitude = row['Latitude'].to_s
        d.longitude = row['Longitude'].to_s
        d.local_time = row['Local Time'].to_s
        d.river_basin = row['River Basin'].to_s
        d.start_year = row['Start Year'].to_i
        d.start_month = row['Start Month'].to_i
        d.start_day = row['Start Day'].to_i
        d.end_year = row['End Year'].to_i
        d.end_month = row['End Month'].to_i
        d.end_day = row['End Day'].to_i
        d.total_deaths = row['Total Deaths'].to_i
        d.no_injured = row['No Injured'].to_i
        d.no_affected = row['No Affected'].to_i
        d.no_homeless = row['No Homeless'].to_i
        d.total_affected = row['Total Affected'].to_i
        d.insured_damages = row['Insured Damages'].to_i
        d.total_damages = row['Total Damages'].to_i
        d.cpi = row['CPI'].to_i
        d.adm_level = row['ADM Level'].to_s
        d.admin1_code = row['Admin1 Code'].to_s
        d.admin2_code = row['Admin2 Code'].to_s
        d.geo_locations = row['Geo Locations'].to_s

        d.save

        ap d

      end
  
    end
  
  end
  