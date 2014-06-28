class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :contacts, :friend_id, :integer

    add_index :contacts, [:friend_id]
  end

  def self.down
    remove_column :contacts, :friend_id

    remove_index :contacts, :name => :index_contacts_on_friend_id rescue ActiveRecord::StatementInvalid
  end
end
