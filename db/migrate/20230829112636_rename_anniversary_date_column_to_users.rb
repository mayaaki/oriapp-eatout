class RenameAnniversaryDateColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :anniversary_date, :birth_date
  end
end
