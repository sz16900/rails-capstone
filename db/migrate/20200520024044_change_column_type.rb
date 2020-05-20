class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    def up 
      change_column :tags, :category_id, :string 
    end 
    def down 
      change_column :profiles, :category_id, :bigint 
    end 
  end
end
