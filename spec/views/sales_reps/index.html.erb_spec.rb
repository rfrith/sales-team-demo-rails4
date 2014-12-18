require 'spec_helper'

describe "sales_reps/index" do
  before(:each) do
    assign(:sales_reps, [
      stub_model(SalesRep,
        :unique_id => "Unique",
        :first_name => "First Name",
        :last_name => "Last Name",
        :sales_group_id => ""
      ),
      stub_model(SalesRep,
        :unique_id => "Unique",
        :first_name => "First Name",
        :last_name => "Last Name",
        :sales_group_id => ""
      )
    ])
  end

  it "renders a list of sales_reps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unique".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
