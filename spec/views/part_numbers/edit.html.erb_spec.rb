require 'rails_helper'

RSpec.describe "part_numbers/edit", type: :view do
  before(:each) do
    @part_number = assign(:part_number, PartNumber.create!(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders the edit part_number form" do
    render

    assert_select "form[action=?][method=?]", part_number_path(@part_number), "post" do

      assert_select "input#part_number_name[name=?]", "part_number[name]"

      assert_select "input#part_number_sort[name=?]", "part_number[sort]"

      assert_select "input#part_number_active_status[name=?]", "part_number[active_status]"
    end
  end
end
