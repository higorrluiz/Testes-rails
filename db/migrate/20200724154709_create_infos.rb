class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nationality
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
