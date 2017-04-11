class Question < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :answers

  QUESTION_TYPES = [:short_answer, :multiple_choice]
  enum qtype: QUESTION_TYPES
  validates :qtype, inclusion: {in: qtypes.keys }


end
