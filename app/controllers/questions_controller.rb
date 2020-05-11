class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    if params[:question].downcase == "I am going to work".downcase
      @answer = "Great!"
    elsif params[:question].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else params[:question].present?
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
