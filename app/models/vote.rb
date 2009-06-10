class Vote < ActiveRecord::Base
  has_many :nominees, :through  => :users
end
