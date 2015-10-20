class CreateAgeValidators < ActiveRecord::Migration
  def change
    create_table :age_validators do |t|

      t.timestamps null: false
    end
  end
end
