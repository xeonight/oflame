class Nominee < ActiveRecord::Base
  acts_as_taggable_on :tags, :ranks
  
  has_attached_file :image, :styles => { :small => '96x96>',
                                         :normal => '196x196>' }
  validates_attachment_presence :image                                       

  def flame_tag
    (Tag.find_by_name('flame')).id
  end
  
  def lame_tag
    (Tag.find_by_name('lame')).id
  end
  
  def flame_rank
    Tagging.count(:conditions => {:tag_id => flame_tag, :taggable_id => self})
  end
  
  def lame_count
    Tagging.count(:conditions => {:tag_id => lame_tag, :taggable_id => self})
  end
  
  def lame_rank
    ("-" + (Tagging.count(:conditions => {:tag_id => lame_tag, :taggable_id => self})).to_s).to_f
  end
    
  def oflame_rank
    # unless flame_rank or lame_rank == 0
      # ((flame_rank)-(lame_rank)/(flame_rank)+(lame_rank)).to_f
      (flame_rank + lame_rank) / (flame_rank + lame_count)
    # else
      #      flame_rank.to_s
      #      lame_rank.to_s
    #    end
  end
end


