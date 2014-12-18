require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :sales_rep_id => ""
      ),
      stub_model(Location,
        :name => "Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :sales_rep_id => ""
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
