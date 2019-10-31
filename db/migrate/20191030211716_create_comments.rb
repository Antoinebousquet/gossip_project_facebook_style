class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content

      # N -1 association with gossips and users tables
      t.belongs_to :gossip
      t.belongs_to :user

      t.timestamps
    end
  end
end
