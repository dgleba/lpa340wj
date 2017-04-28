require 'rails_helper'

RSpec.describe "process_steps/show", type: :view do
  before(:each) do
    @process_step = assign(:process_step, ProcessStep.create!(
      :name => "Name",
      :sort => 2,
      :active_status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
