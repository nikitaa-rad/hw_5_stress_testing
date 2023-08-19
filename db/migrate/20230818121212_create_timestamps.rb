class CreateTimestamps < ActiveRecord::Migration[6.1]
  def change
    create_table :timestamps do |t|
      t.datetime :received_at
      t.timestamps
    end
  end
end
