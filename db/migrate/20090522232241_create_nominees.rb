class CreateNominees < ActiveRecord::Migration
  def self.up
    create_table :nominees do |t|
      t.string :name
      t.text :content
      t.timestamps
      
    end  
      Nominee.create(:name => 'Emacs', :content => 'A very versatile and complicated editor that is cross-platform', :tag_list => 'editor, lisp')
      Nominee.create(:name => 'Jack', :content => 'Jack was my cockatiel for about 2 years', :tag_list => 'pets, birds')
  end

  def self.down
    drop_table :nominees
  end
end
