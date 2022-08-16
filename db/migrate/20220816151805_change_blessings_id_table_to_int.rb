class ChangeBlessingsIdTableToInt < ActiveRecord::Migration[6.1]
  def change
    change_table :blessings do |t|
      t.remove :question_id
      t.integer :category_id
    end
  end
end
