class CreateDonations < ActiveRecord::Migration[6.1]
  def change
        create_table :donations do |i|
          i.integer      :amount
          i.string       :comment
          i.integer      :categorie_id
          i.integer      :user_id

          i.timestamps 
        end
  end
end
