require 'spec_helper'

describe "sales_groups/edit" do
  before(:each) do
    @sales_group = assign(:sales_group, stub_model(SalesGroup,
      :unique_id => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit sales_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_group_path(@sales_group), "post" do
      assert_select "input#sales_group_unique_id[name=?]", "sales_group[unique_id]"
      assert_select "input#sales_group_description[name=?]", "sales_group[description]"
    end
  end
end
