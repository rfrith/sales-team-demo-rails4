require 'spec_helper'

describe "sales_reps/edit" do
  before(:each) do
    @sales_rep = assign(:sales_rep, stub_model(SalesRep,
      :unique_id => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :sales_group_id => ""
    ))
  end

  it "renders the edit sales_rep form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_rep_path(@sales_rep), "post" do
      assert_select "input#sales_rep_unique_id[name=?]", "sales_rep[unique_id]"
      assert_select "input#sales_rep_first_name[name=?]", "sales_rep[first_name]"
      assert_select "input#sales_rep_last_name[name=?]", "sales_rep[last_name]"
      assert_select "input#sales_rep_sales_group_id[name=?]", "sales_rep[sales_group_id]"
    end
  end
end
