class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :account, index: true

      t.timestamps
    end
  end
end
