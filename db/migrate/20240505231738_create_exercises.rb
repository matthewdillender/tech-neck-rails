class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.string :start_image_url
      t.string :end_image_url

      t.timestamps
    end
  end
end
