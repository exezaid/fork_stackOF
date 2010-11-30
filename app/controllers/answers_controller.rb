class AnswersController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def positive_vote
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.positive_vote!
    redirect_to(@question, :notice => 'Voto positivo')
  end

  def negative_vote
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.negative_vote!
    redirect_to(@question, :notice => 'Voto negativo')
  end


  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer])
    @answer.user = current_user
    if @answer.save
      redirect_to(@question, :notice => 'La respuesta ha sido publicada.')
    else
      render :action => "new"
    end
  end
end

