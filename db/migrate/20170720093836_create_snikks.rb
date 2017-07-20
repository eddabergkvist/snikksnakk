class CreateSnikks < ActiveRecord::Migration[5.1]
  def change
    create_table :snikks do |t|
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
