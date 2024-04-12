class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @category_parent = Category.where(ancestry: nil)
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def category_children
    parent_category = Category.find(params[:parent_id])
    @category_children = parent_category.children
  end

  def category_grandchildren
    child_category = Category.find(params[:child_id])
    @category_grandchildren = child_category.children
  end

  def show
  end

  def edit
  end

  private

  def question_params
    params.require(:question).permit(:title, :content, :category_id, :image).merge(user_id: current_user.id)
  end
end
