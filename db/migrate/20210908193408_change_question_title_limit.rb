class ChangeQuestionTitleLimit < ActiveRecord::Migration[6.1]
  def change
    change_column :questions, :title, :string, :limit => 512 #By default SQL String limit 255 character 
    #Ex:- :limit => 40
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
