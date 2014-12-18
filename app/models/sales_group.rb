class SalesGroup < ActiveRecord::Base
  validates_presence_of :unique_id, :description
  validates_uniqueness_of :unique_id, message: "Identifier has already been used.  Please enter a different value."
  has_many :sales_reps
  has_many :locations, through: :sales_reps
end
