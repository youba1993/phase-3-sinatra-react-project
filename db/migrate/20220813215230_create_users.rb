class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |i|
        i.string      :first_name
        i.string      :last_name
        i.string      :email
    end
  end
end
