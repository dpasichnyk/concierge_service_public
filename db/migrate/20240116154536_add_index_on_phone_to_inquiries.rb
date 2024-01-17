class AddIndexOnPhoneToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_index :inquiries, :phone_number, unique: true
  end
end
