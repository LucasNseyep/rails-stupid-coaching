class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @question = params[:question]
      if @question == "I am going to work"
        return @answer = "Great!"
      elsif @question.include?("?")
        return @answer = "Silly question, get dressed and go to work!"
        take_screenshot
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
