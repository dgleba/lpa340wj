class AnswersController < ApplicationController
  def create
    survey = Survey.find(params[:survey_id])
    if survey
      params[:answers].each_pair do |question_id, answer|
        question = survey.questions.find(question_id)
        question.answers.create({body: answer, user: current_user}) if question
      end
    end
    redirect_to surveys_path
  end
end

#params
# { answers: { 1: "this looks good" } }
