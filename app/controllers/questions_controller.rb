class QuestionsController < ApplicationController
  def index
    @questions = Question.order("created_at desc").limit(50)
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
        redirect_to(@question, :notice => 'La pregunta ha sido publicada.')
      else
        render :action => "new"
      end
  end


end

