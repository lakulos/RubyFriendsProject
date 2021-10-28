class CreateFriendsdbs < ActiveRecord::Migration[6.1]
  def change
    create_table :friendsdbs do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Email
      t.string :Phone_Number
      t.string :Twitter

      t.timestamps
    end
  end
end
