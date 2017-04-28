require 'rails_helper'

RSpec.describe "PartNumbers", type: :request do
  describe "GET /part_numbers" do
    it "works! (now write some real specs)" do
      get part_numbers_path
      expect(response).to have_http_status(200)
    end
  end
end
