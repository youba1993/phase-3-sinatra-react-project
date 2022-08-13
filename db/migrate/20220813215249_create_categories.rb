class CreateCategories < ActiveRecord::Migration[6.1]
  def change
      create_table :categories do |i|
          i.string     :name
          i.string     :website 
          i.string     :bio
      end
  end
end
