class QuestionsController < ApplicationController

  def ask
    @answer = "#{params[:ask]} <br>...answer: IDFK."
  end

  def answer
    if params[:ask] == 'I am going to work'
      @answer = 'Great'
    elsif "#{params[:ask]}".include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # @answer = "#{params[:ask]} <bruh your ...answer: IDFK."
  end
end
