class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :remote_ip

      t.timestamps
    end
  end
end
