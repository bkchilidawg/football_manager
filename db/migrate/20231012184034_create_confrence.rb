class CreateConfrence < ActiveRecord::Migration[7.0]
  def change
    create_table :confrences do |t|
      t.string :name
      t.integer :number_of_teams
      t.boolean :power_5?

      t.timestamps
    end
  end
end
