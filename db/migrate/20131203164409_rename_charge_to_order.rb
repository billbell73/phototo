class RenameChargeToOrder < ActiveRecord::Migration
  def change
  	drop_table :charges
    create_table :orders do |t|
      t.string :description
      t.belongs_to :photo, index: true
      t.belongs_to :user, index: true
    end
  end
end

