# app/controllers/api_controller.rb

require "net/http"
require "uri"


class ApiController < ApplicationController
  require "replicate"

  def hello
    render plain: "World"
  end

  def ask
    user_input = params[:input] || ""

    prompt = <<~PROMPT
      INITIAL_PROMPT

      Structure the results strictly in this manner, Type can have "Identification", "True/False", and "Multiple Choice"

      GIVE THE ANSWER ONLY NO MORE NO LESS

      "Question": "The Question 1",
      "Type": "Identification",
      "Answer": "The Answer",

      "Question": "The Question 2",
      "Type": "Identification",
      "Answer": "The Answer",
    PROMPT

    output = ""

    user_input = params[:input] || ""
    encoded_input = ERB::Util.url_encode(user_input)
    uri = URI.parse("http://18.140.54.190:5000/ask?input=#{encoded_input}")
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      render json: response.body
    else
      render json: { error: "Failed to fetch data" }, status: :bad_request
    end
  end
end
