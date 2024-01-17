class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.belongs_to :inquiry

      t.integer :year
      t.integer :manufacturer, :integer, default: 0

      t.timestamps
    end
  end
end
