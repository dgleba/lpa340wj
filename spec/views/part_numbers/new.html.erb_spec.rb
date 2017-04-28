require 'rails_helper'

RSpec.describe "part_numbers/new", type: :view do
  before(:each) do
    assign(:part_number, PartNumber.new(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders new part_number form" do
    render

    assert_select "form[action=?][method=?]", part_numbers_path, "post" do

      assert_select "input#part_number_name[name=?]", "part_number[name]"

      assert_select "input#part_number_sort[name=?]", "part_number[sort]"

      assert_select "input#part_number_active_status[name=?]", "part_number[active_status]"
    end
  end
end
