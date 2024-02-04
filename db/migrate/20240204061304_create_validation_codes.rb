class CreateValidationCodes < ActiveRecord::Migration[7.1]
  def change
    create_table :validation_codes do |t|
      t.string :email
      t.integer :kind
      t.string :code
      t.datetime :used_at

      t.timestamps
    end
  end
end
