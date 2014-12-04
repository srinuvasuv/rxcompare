class Website < ActiveRecord::Base
validates :name, :presence => true
validates :url, :presence => true
validates :active, :presence => true

end
