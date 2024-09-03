module CommonExam
  extend ActiveSupport::Concern

  included do
    before_action :allow_to_take_exam
    before_action :load_questions, only: :new
  end

  private

  def allow_to_take_exam
    type = request.path.split("/").last
    pass_exam = current_user.examinations.pass.find_by(category: type)
    redirect_to root_path if pass_exam
  end

  def load_questions
    @questions = question_template.shuffle
  end

  def create_examination(category)
    examination = current_user.examinations.new(
      category: category,
      start_at: params[:start_at],
      end_at: Time.zone.now,
      number_of_questions: question_template.size,
      answers: (params[:answers].to_unsafe_h rescue {})
    )
    examination.number_of_correct_answers = get_number_of_correct_answers
    examination.status = examination.number_of_correct_answers < 32 ? :fail : :pass
    examination.save
    redirect_to root_path
  end

  def get_number_of_correct_answers
    return 0 if params[:answers].blank?

    answers = question_template.each_with_object({}) { |question, hash| hash[question[:id].to_s] = question[:answer].to_s }
    answers.select { |key, value| params[:answers][key] == value }.size
  end
end
