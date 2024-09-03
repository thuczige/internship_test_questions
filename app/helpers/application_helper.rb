module ApplicationHelper
  def get_link_to_exam(type)
    pass_exam = @examinations.find { |result| result.category == type.downcase && result.pass? }
    fail_exam = @examinations.find { |result| result.category == type.downcase && result.fail? } unless pass_exam

    show_link_to_exam_or_text(type, pass_exam, fail_exam).html_safe
  end

  private

  def show_link_to_exam_or_text(type, pass_exam, fail_exam)
    return "<strong>#{type} #{show_score(pass_exam)}</strong>" if pass_exam

    path = link_to type, Rails.application.routes.url_helpers.send("exams_#{type.downcase}_path")
    return path unless fail_exam

    "#{path} #{show_score(fail_exam)}"
  end

  def show_score(exam)
    css_class_name = exam.pass? ? "text-success" : "text-danger"
    "<span class=#{css_class_name}>#{exam.status.upcase}</span>"
  end
end
