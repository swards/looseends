class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false

      # Admin will determine status - starts at "new"
      t.string :status, null: false, default: 'proposed'

      # Project Info
      t.string :name, null: false
      t.text :description

      # mailing address
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code

      # Craft/Product (w photos)
      t.string :craft_type

      # pattern (w photos)
      t.string :has_pattern

      # material (w photos)
      t.string :material_type

      # crafter (w photos)
      t.string :crafter_name
      t.text :crafter_description

      t.string :recipient_name


      t.text :more_details

      # Share
      t.boolean :can_publicize

      # Terms
      t.boolean :terms_of_use

      t.timestamps
    end
  end
end
