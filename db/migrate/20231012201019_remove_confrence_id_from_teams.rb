class RemoveConfrenceIdFromTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :confrence_id, :integer
  end
end
