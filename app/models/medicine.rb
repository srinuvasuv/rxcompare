class Medicine < ActiveRecord::Base
 validates :name, :presence => true
 validates :dispense, :presence => true
end
