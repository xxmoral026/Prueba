class CreateEvents1s < ActiveRecord::Migration[5.1]
  def change
    create_table :events1s do |t|
      t.string :title
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
