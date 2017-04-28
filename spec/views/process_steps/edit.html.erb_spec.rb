require 'rails_helper'

RSpec.describe "process_steps/edit", type: :view do
  before(:each) do
    @process_step = assign(:process_step, ProcessStep.create!(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders the edit process_step form" do
    render

    assert_select "form[action=?][method=?]", process_step_path(@process_step), "post" do

      assert_select "input#process_step_name[name=?]", "process_step[name]"

      assert_select "input#process_step_sort[name=?]", "process_step[sort]"

      assert_select "input#process_step_active_status[name=?]", "process_step[active_status]"
    end
  end
end
