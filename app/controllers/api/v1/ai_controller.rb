module Api
    module V1
      class AiController < ApplicationController

        before_action :get_attrib, only: %i[ data complex_data ]
  

        # GET /info
        # GET /info.json
        def info

        end

        # POST /data
        # POST /data.json
        def data

            @answer = ''

            if @attrib[:search] != ''
                #ap 'OpenAI'
                o = OpenAiInnovatron.new
                e = o.create_completion_data(@attrib[:search])
                @answer = e.choices.first[:text].gsub("\n", "")
            end

        end

        # POST /complex_data
        # POST /complex_data.json
        def complex_data 

            @answer     = ''
            @disasters  = []
            @fields     = []

            if @attrib[:search] != ''
                #ap 'OpenAI'
                o = OpenAiInnovatron.new
                e = o.create_completion_data(@attrib[:search])
                # ap @answer = e.choices.first[:text]
                @answer = e.choices.first[:text].gsub("\n", "")

                if @answer != ''
                    @fields  = @answer.split(',').map { |str| str.lstrip }
                    # @fields[0] = country
                    # @fields[1] = region continent
                    # @fields[2] = location
                    @disasters = Disaster.where("country LIKE ? AND location LIKE ? ", "%#{@fields[0]}%","%#{@fields[2]}%").limit(10).order(year: :desc)
                end
                
            end  

        end

        private

        def get_attrib
            @attrib = {}
            @attrib[:search]    = (params[:search].present? ? params[:search] : '') 
        end


      end
    end
  end
  