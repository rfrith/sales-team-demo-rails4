require 'spec_helper'

describe "sales_reps/show" do
  before(:each) do
    @sales_rep = assign(:sales_rep, stub_model(SalesRep,
      :unique_id => "Unique",
      :first_name => "First Name",
      :last_name => "Last Name",
      :sales_group_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unique/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(//)
  end
end
