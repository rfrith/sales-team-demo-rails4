require 'spec_helper'

describe "SalesReps" do
  describe "GET /sales_reps" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sales_reps_path
      response.status.should be(200)
    end
  end
end
