require 'rails_helper'

RSpec.describe "ProcessSteps", type: :request do
  describe "GET /process_steps" do
    it "works! (now write some real specs)" do
      get process_steps_path
      expect(response).to have_http_status(200)
    end
  end
end
