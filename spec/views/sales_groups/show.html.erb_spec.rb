require 'spec_helper'

describe "sales_groups/show" do
  before(:each) do
    @sales_group = assign(:sales_group, stub_model(SalesGroup,
      :unique_id => "Unique",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unique/)
    rendered.should match(/Description/)
  end
end
