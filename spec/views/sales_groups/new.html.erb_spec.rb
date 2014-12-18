require 'spec_helper'

describe "sales_groups/new" do
  before(:each) do
    assign(:sales_group, stub_model(SalesGroup,
      :unique_id => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new sales_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_groups_path, "post" do
      assert_select "input#sales_group_unique_id[name=?]", "sales_group[unique_id]"
      assert_select "input#sales_group_description[name=?]", "sales_group[description]"
    end
  end
end
