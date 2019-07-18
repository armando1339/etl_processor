class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :price
      t.string :name
      t.string :description
      t.string :width
      t.string :length
      t.string :height
      t.string :door_height
      t.string :door_width
      t.string :door_type
      t.string :access_type
      t.string :floor
      t.string :size
      t.string :area
      t.string :standard_rate
      t.string :managed_rate
      t.string :available_for_move_in
      t.string :rentable
      t.string :status
      t.string :payment_status
      t.string :current_ledger_id
      t.string :current_tenant_id
      t.string :combination_lock_number
      t.string :attribute_description
      t.string :deleted
      t.string :damaged
      t.string :complimentary
      t.string :channel_rate
      t.string :unit_amenities
      t.string :unit_type
      t.string :unit_group_id
      t.string :external_id
      t.timestamps
    end
  end
end
