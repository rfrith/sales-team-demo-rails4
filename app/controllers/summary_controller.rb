class SummaryController < ApplicationController
  before_action :set_summary, only: [:index, :sales_groups_and_sales_reps, :locations_and_sales_reps, :sales_groups_and_locations]

  # GET /summary
  # GET /sales_reps.json
  def index
  end
  
  def sales_groups_and_sales_reps
  end
  
  def locations_and_sales_reps
  end
  
  def sales_groups_and_locations
  end
  
    
  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_summary
      @sales_reps = SalesRep.all
      @sales_groups = SalesGroup.all
      @locations = Location.all
    end    

    # Never trust parameters from the scary internet, only allow the white list through.
    def summary_params
      #params.require(:sales_rep).permit(:unique_id, :first_name, :last_name)
    end
    
end