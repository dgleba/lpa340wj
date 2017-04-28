require 'rails_helper'

RSpec.describe "process_steps/index", type: :view do
  before(:each) do
    assign(:process_steps, [
      ProcessStep.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      ),
      ProcessStep.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      )
    ])
  end

  it "renders a list of process_steps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
