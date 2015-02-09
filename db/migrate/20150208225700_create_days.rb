class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :date
      t.string :updated
      t.integer :cycle_day
      t.decimal :temperature
      t.boolean :questionable_temp
      t.boolean :temp_shift
      t.boolean :no_fluid
      t.integer :fluid_sticky
      t.integer :fluid_creamy
      t.integer :fluid_eggwhite
      t.integer :fluid_watery
      t.integer :cervix_height
      t.integer :cervix_openness
      t.integer :cervix_firmness
      t.integer :opk
      t.boolean :peak_day
      t.integer :sex
      t.boolean :first_day
      t.boolean :menstruation
      t.text :custom
      t.text :notes
      t.timestamps
    end
  end
end
