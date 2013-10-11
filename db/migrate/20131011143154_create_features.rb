class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :type
      t.string :value
      t.integer :associated_id
      t.string :associated_type

      t.timestamps
    end
  end
end
