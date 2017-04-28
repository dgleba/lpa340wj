require 'rails_helper'

RSpec.describe "part_numbers/index", type: :view do
  before(:each) do
    assign(:part_numbers, [
      PartNumber.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      ),
      PartNumber.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      )
    ])
  end

  it "renders a list of part_numbers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
