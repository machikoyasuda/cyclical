class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :token
      t.references :account, index: true

      t.timestamps
    end
    add_index :connections, :token
  end
end
