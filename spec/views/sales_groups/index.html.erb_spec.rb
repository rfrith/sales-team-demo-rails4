require 'spec_helper'

describe "sales_groups/index" do
  before(:each) do
    assign(:sales_groups, [
      stub_model(SalesGroup,
        :unique_id => "Unique",
        :description => "Description"
      ),
      stub_model(SalesGroup,
        :unique_id => "Unique",
        :description => "Description"
      )
    ])
  end

  it "renders a list of sales_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unique".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
