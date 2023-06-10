module Api
  module V1
    class DisastersController < ApplicationController

      before_action :set_disaster, only: %i[ show update destroy ]
      before_action :get_attrib, only: %i[ index ]

      # GET /disasters
      # GET /disasters.json
      def index
        @disasters = Disaster.paginate( page: @attrib[:page], per_page: @attrib[:per_page] )
        @total = Disaster.count
      end

      # GET /disasters/1
      # GET /disasters/1.json
      def show
      end

      # POST /disasters
      # POST /disasters.json
      def create
        @disaster = Disaster.new(disaster_params)

        if @disaster.save
          render :show, status: :created, location: @disaster
        else
          render json: @disaster.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /disasters/1
      # PATCH/PUT /disasters/1.json
      def update
        if @disaster.update(disaster_params)
          render :show, status: :ok, location: @disaster
        else
          render json: @disaster.errors, status: :unprocessable_entity
        end
      end

      # DELETE /disasters/1
      # DELETE /disasters/1.json
      def destroy
        @disaster.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_disaster
          @disaster = Disaster.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def disaster_params
          params.require(:disaster).permit(:year, :seq, :glide, :disaster_group, :disaster_subgroup, :disaster_type, :disaster_subtype, :disaster_sub_sub_type, :event_name, :country, :iso, :region, :continent, :location, :origin, :associated_dis, :associated_dis2, :ofda_response, :appeal, :declaration, :aid_contribution, :dis_mag_value, :dis_mag_scale, :latitude, :longitude, :local_time, :river_basin, :start_year, :start_month, :start_day, :end_year, :end_month, :end_day, :total_deaths, :no_injured, :no_affected, :no_homeless, :total_affected, :insured_damages, :total_damages, :cpi, :adm_level, :admin1_code, :admin2_code, :geo_locations)
        end


        def get_attrib
          @attrib = {}
          @attrib[:page]      = (params[:page].present? ? params[:page].to_i : 1)
          @attrib[:per_page]  = (params[:per_page].present? ? ( params[:per_page].to_i <= 25 ?  params[:per_page].to_i : 25 ) : ENV["PER_PAGE"].to_i) # Max 25 per_page
          #@attrib[:init_date] = ( params[:init_date].present? ? ("#{params[:init_date]} 00:00:00").to_datetime : DateTime.now.strftime('%d-%m-%Y 00:00:00').to_datetime )
          #@attrib[:end_date]  = ( params[:end_date].present? ? ("#{params[:end_date]} 23:59:59").to_datetime  : DateTime.now.strftime('%d-%m-%Y 23:59:59').to_datetime )
          #@attrib[:sort_by]   = (params.key?(:sort_by) ? get_sort_by(params[:sort_by]) : 'order_created_at')
          #@attrib[:order_by]  = (params.key?(:order_by) ? get_order_by(params[:order_by]) : 'DESC')
          #@attrib[:search]    = (params[:search].present? ? params[:search] : '')
          
        end

        
    end
  end
end
