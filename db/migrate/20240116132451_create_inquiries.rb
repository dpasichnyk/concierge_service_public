class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :phone_number
      t.string :email

      t.text :description

      t.timestamps
    end
  end
end
