class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :confrence_id
      t.string :college_name
      t.integer :conf_champs
      t.boolean :natl_champ?

      t.timestamps
    end
  end
end
