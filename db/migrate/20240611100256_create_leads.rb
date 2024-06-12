class CreateLeads < ActiveRecord::Migration[8.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :phone
      t.string :source
      t.integer :state
      t.text :description
      t.text :industry
      t.text :task
      t.text :solution
      t.text :expectations
      t.text :budget

      t.timestamps
    end
  end
end
