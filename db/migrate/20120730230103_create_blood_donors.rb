class CreateBloodDonors < ActiveRecord::Migration
  def change
    create_table :blood_donors do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :bloodGroup
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
