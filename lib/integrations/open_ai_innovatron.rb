# lib/integrations/.rb


require "openai"


class OpenAiInnovatron
  

  attr_accessor :token


  # Init values
  def initialize

    @token    = ENV['TOKEN_OPEN_AI']

  end # initialize


 
  # Create Completion
    # data[:search]
  def create_completion_data search = ''

    openai_client = OpenAI::Client.new(api_key: @token, default_engine: "text-davinci-003")
    
    # Retrieve Engine
    #openai_client.engine("text-davinci-003")

    # Create Completion
    response = openai_client.completions(prompt: search, max_tokens: 3)

    puts response
    return response

    # List Engines
    #openai_client.engines

    # Search
    #openai_client.search(documents: ["White House", "hospital", "school"], query: "the president")
    #openai_client.search(query: "the president")

    

  end # create_completion_data()


end # class SendgridMailer
