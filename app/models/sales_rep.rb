class SalesRep < ActiveRecord::Base
  validates_presence_of :unique_id, :first_name, :last_name
  validates_uniqueness_of :unique_id, message: "Identifier has already been used.  Please enter a different value."
  belongs_to :sales_group
  has_one :location
  #accepts_nested_attributes_for :location, allow_destroy: false
end
