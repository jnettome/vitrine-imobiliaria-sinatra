class CreateEstatesTable < ActiveRecord::Migration
  def up
    create_table :estates do |t|
      t.string :name, :null => false
      t.string :preview, :null => false
      t.string :image_url
      t.decimal :price
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
    drop_table :estates
  end
end
