class CreateBlessings < ActiveRecord::Migration[6.1]
  def change
    create_table :blessings do |t|
      t.string :answer
      t.string :question_id
      t.timestamps
    end
  end
end
