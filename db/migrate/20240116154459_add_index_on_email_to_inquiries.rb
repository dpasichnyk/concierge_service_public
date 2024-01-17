class AddIndexOnEmailToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_index :inquiries, :email, unique: true
  end
end
