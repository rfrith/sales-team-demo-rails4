class Location < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :state, :zip
  belongs_to :sales_rep
end
