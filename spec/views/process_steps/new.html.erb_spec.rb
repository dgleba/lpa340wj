require 'rails_helper'

RSpec.describe "process_steps/new", type: :view do
  before(:each) do
    assign(:process_step, ProcessStep.new(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders new process_step form" do
    render

    assert_select "form[action=?][method=?]", process_steps_path, "post" do

      assert_select "input#process_step_name[name=?]", "process_step[name]"

      assert_select "input#process_step_sort[name=?]", "process_step[sort]"

      assert_select "input#process_step_active_status[name=?]", "process_step[active_status]"
    end
  end
end
