class Examination < ApplicationRecord
  belongs_to :user

  CATEGORIES = { html: "HTML", css: "CSS", javascript: "Javascript", ruby: "Ruby", mysql: "MySQL", git: "Git" }

  serialize :answers, coder: YAML, type: Hash

  validates :category, :status, :start_at, :end_at,
            :number_of_correct_answers, :number_of_questions, presence: :true

  enum category: { html: 1, css: 2, javascript: 3, ruby: 4, mysql: 5, git: 6 }
  enum status: { pass: 1, fail: 2 }
end
