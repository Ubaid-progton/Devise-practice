class CreateDerives < ActiveRecord::Migration[7.0]
  def change
    create_table :derives do |t|

      t.timestamps
    end
  end
end
