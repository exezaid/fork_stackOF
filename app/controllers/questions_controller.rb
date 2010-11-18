class QuestionsController < ApplicationController
  def index
    @questions = Question.order("created_at desc").limit(50)
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = @question.answers.build
  end

  def positive_vote
    @question = Question.find(params[:id])
    @question.positive_vote!
    redirect_to(@question, :notice => 'Voto positivo')
  end

  def negative_vote
    @question = Question.find(params[:id])
    @question.negative_vote!
    redirect_to(@question, :notice => 'Voto negativo')
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

