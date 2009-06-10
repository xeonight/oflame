class Nominee < ActiveRecord::Base
  has_many :users
  has_many :votes, :through  => :users
  acts_as_taggable_on :tags
  
  has_attached_file :image, :styles => { :small => '128x128>' }

  def rank
    @nominee = votes.find_by_rank(:all)
  end
end
