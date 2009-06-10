class AddAttachmentsImageToNominee < ActiveRecord::Migration
  def self.up
    add_column :nominees, :image_file_name, :string
    add_column :nominees, :image_content_type, :string
    add_column :nominees, :image_file_size, :integer
    add_column :nominees, :image_updated_at, :datetime
  end

  def self.down
    remove_column :nominees, :image_file_name
    remove_column :nominees, :image_content_type
    remove_column :nominees, :image_file_size
    remove_column :nominees, :image_updated_at
  end
end
