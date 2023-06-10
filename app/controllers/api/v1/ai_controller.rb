module Api
    module V1
      class AiController < ApplicationController

        before_action :get_attrib, only: %i[ data ]
  

        # GET /info
        # GET /info.json
        def info

        end

        # POST /data
        # POST /data.json
        def data

            @answer = ''

            if @attrib[:search] != ''
                ap 'OpenAI'
                o = OpenAiInnovatron.new
                e = o.create_completion_data(@attrib[:search])
                @answer = e.choices.first[:text].gsub("\n", "")
            else
                ap 'No hago nada'
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
  