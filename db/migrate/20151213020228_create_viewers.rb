class CreateViewers < ActiveRecord::Migration[4.2]
  def change
    create_table :viewers do |t|
      t.references :note, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
