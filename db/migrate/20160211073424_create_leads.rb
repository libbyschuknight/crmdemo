class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :company
      t.string :email

      t.timestamps null: false
    end
  end
end
