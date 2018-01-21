class ExamsController < ApplicationController
  def index
    @tests_available = Test.all
  end 

  def show
    test_id = params[:id]
    @test = Test.find_by(id: test_id)
    @questions = @test.questions
  end

  def submit
    @student = Student.find_by(email: params[:student_email])
    @user_answers = params[:question]
    @my_score = 0
    @summary = []
    @user_answers.each do |question_id, ans|
      question = Question.find_by(id: question_id)
      @summary << 
      {
        question: question.description,
        actual_ans: question.ans,
        your_ans: ans
      }
      @my_score += 1 if question.ans == ans 
    end 
  end 
end
