class PagesController < ApplicationController
  def ask

  end

  def answer
    @responses = ['Great', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if params[:answer] == 'I am going to work'
      params[:answer] = ' Great'
    elsif params[:answer].end_with?('?')
      params[:answer] = 'Silly question, get dressed and go to work!'
    else
      params[:answer] = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
