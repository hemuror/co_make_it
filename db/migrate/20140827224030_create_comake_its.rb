class CreateComakeIts < ActiveRecord::Migration
  def change
    create_table :comake_its do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
