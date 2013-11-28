class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :content
      # t.has_and_belongs_to_many :photo

      t.timestamps
    end
  end
end
