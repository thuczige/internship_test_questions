class ExamsController < ApplicationController
  def index
    @examinations = if params[:view_all_exams_key] == ENV["VIEW_ALL_EXAMS_KEY"]
      Examination.includes(:user).order(user_id: :desc, category: :asc, number_of_correct_answers: :desc)
    else
      current_user.examinations.order(category: :asc, number_of_correct_answers: :desc)
    end.page(params[:page])
  end
end
