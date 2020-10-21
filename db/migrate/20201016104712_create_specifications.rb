class CreateSpecifications < ActiveRecord::Migration[6.0]
  def change
    create_table :specifications do |t|
      t.string :year
      t.string :seats
      t.string :transmission
      t.string :propulsion
      t.string :mileage
      t.string :engine
      t.string :power
      t.integer :price_per_day
      t.string :body_style
      t.string :description_user
      t.string :city
      t.integer :zipcode
      t.string :country
      t.string :street
      t.string :type_name
      t.string :number_plate
      t.text :slug
      t.integer :postal_code
      t.string :car_grade_given_by_users
      t.string :fuel_type
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
