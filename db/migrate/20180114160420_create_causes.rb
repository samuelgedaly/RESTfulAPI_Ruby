class CreateCauses < ActiveRecord::Migration[5.1]
  def change
    create_table :causes do |t|
      t.string :name
      t.string :type
      t.text :story
      t.string :event_date
      t.integer :donations

      t.timestamps
    end
  end
end
