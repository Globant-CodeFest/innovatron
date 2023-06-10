require "test_helper"

class DisastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disaster = disasters(:one)
  end

  test "should get index" do
    get disasters_url, as: :json
    assert_response :success
  end

  test "should create disaster" do
    assert_difference("Disaster.count") do
      post disasters_url, params: { disaster: { adm_level: @disaster.adm_level, admin1_code: @disaster.admin1_code, admin2_code: @disaster.admin2_code, aid_contribution: @disaster.aid_contribution, appeal: @disaster.appeal, associated_dis: @disaster.associated_dis, associated_dis2: @disaster.associated_dis2, continent: @disaster.continent, country: @disaster.country, cpi: @disaster.cpi, declaration: @disaster.declaration, dis_mag_scale: @disaster.dis_mag_scale, dis_mag_value: @disaster.dis_mag_value, disaster_group: @disaster.disaster_group, disaster_sub_sub_type: @disaster.disaster_sub_sub_type, disaster_subgroup: @disaster.disaster_subgroup, disaster_subtype: @disaster.disaster_subtype, disaster_type: @disaster.disaster_type, end_day: @disaster.end_day, end_month: @disaster.end_month, end_year: @disaster.end_year, event_name: @disaster.event_name, geo_locations: @disaster.geo_locations, glide: @disaster.glide, insured_damages: @disaster.insured_damages, iso: @disaster.iso, latitude: @disaster.latitude, local_time: @disaster.local_time, location: @disaster.location, longitude: @disaster.longitude, no_affected: @disaster.no_affected, no_homeless: @disaster.no_homeless, no_injured: @disaster.no_injured, ofda_response: @disaster.ofda_response, origin: @disaster.origin, region: @disaster.region, river_basin: @disaster.river_basin, seq: @disaster.seq, start_day: @disaster.start_day, start_month: @disaster.start_month, start_year: @disaster.start_year, total_affected: @disaster.total_affected, total_damages: @disaster.total_damages, total_deaths: @disaster.total_deaths, year: @disaster.year } }, as: :json
    end

    assert_response :created
  end

  test "should show disaster" do
    get disaster_url(@disaster), as: :json
    assert_response :success
  end

  test "should update disaster" do
    patch disaster_url(@disaster), params: { disaster: { adm_level: @disaster.adm_level, admin1_code: @disaster.admin1_code, admin2_code: @disaster.admin2_code, aid_contribution: @disaster.aid_contribution, appeal: @disaster.appeal, associated_dis: @disaster.associated_dis, associated_dis2: @disaster.associated_dis2, continent: @disaster.continent, country: @disaster.country, cpi: @disaster.cpi, declaration: @disaster.declaration, dis_mag_scale: @disaster.dis_mag_scale, dis_mag_value: @disaster.dis_mag_value, disaster_group: @disaster.disaster_group, disaster_sub_sub_type: @disaster.disaster_sub_sub_type, disaster_subgroup: @disaster.disaster_subgroup, disaster_subtype: @disaster.disaster_subtype, disaster_type: @disaster.disaster_type, end_day: @disaster.end_day, end_month: @disaster.end_month, end_year: @disaster.end_year, event_name: @disaster.event_name, geo_locations: @disaster.geo_locations, glide: @disaster.glide, insured_damages: @disaster.insured_damages, iso: @disaster.iso, latitude: @disaster.latitude, local_time: @disaster.local_time, location: @disaster.location, longitude: @disaster.longitude, no_affected: @disaster.no_affected, no_homeless: @disaster.no_homeless, no_injured: @disaster.no_injured, ofda_response: @disaster.ofda_response, origin: @disaster.origin, region: @disaster.region, river_basin: @disaster.river_basin, seq: @disaster.seq, start_day: @disaster.start_day, start_month: @disaster.start_month, start_year: @disaster.start_year, total_affected: @disaster.total_affected, total_damages: @disaster.total_damages, total_deaths: @disaster.total_deaths, year: @disaster.year } }, as: :json
    assert_response :success
  end

  test "should destroy disaster" do
    assert_difference("Disaster.count", -1) do
      delete disaster_url(@disaster), as: :json
    end

    assert_response :no_content
  end
end
