class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :description
      t.belongs_to :photo, index: true
      t.belongs_to :user, index: true
    end
  end
end
