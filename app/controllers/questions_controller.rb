class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    if params[:query].downcase == "I am going to work".downcase
      @answer = "Great!"
    elsif params[:query].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else params[:query].present?
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
