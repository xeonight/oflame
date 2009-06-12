class Nominee < ActiveRecord::Base
  acts_as_taggable_on :tags
  acts_as_voteable
  
  has_attached_file :image, :styles => { :small => '96x96>',
                                         :normal => '196x196>' }
  validates_attachment_presence :image

end


