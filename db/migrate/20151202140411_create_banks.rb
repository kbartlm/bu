class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :bankName
      t.string :bankNumber

      t.timestamps null: false
    end
  end
end
