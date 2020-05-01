class CreatePurveyors < ActiveRecord::Migration[6.0]
  def change
    create_table :purveyors do |t|
      t.string :name
      t.string :address
      t.string :product

      t.timestamps
    end
  end
end
