class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :Last_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
