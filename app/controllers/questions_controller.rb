class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answers #as defined below
  end

  def ask
  end

  def coach_answers
    if @query == "What the time"
      return "It's #{Time.now}"
    else
    ["Fuck you!!", "I am too busy dude", "No time!"].sample
  end
end
end
