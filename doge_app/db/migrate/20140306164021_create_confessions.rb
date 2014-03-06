class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t|
      t.text :confession_text

      t.timestamps
    end
  end
end
