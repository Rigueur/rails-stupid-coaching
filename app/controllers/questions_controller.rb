class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @questions = params[:question]
    if @questions.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @questions.include? "I am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
