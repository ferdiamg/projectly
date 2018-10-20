class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :text
      t.references :project
      t.timestamps
    end
  end
end
