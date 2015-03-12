class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :description
    end
  end

  def down
    drop_table :events
  end
end