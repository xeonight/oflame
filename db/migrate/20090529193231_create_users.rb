class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.timestamps
    end
    
    User.create(:username => 'test', :email => 't@t.com', :password => 'test', :password_confirmation => 'test')
    User.create(:username => 'xeo', :email => 'x@x.com', :password => 'test', :password_confirmation => 'test')
  end

  def self.down
    drop_table :users
  end
end
