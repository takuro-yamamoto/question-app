class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question , null: false
      t.integer :choice_number, null: false
      t.references :user, foreign_key: true
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.string :choice5
      t.string :choice6
      t.string :choice7
      t.string :choice8
      t.string :choice9
      t.string :choice10
      t.timestamps
    end
  end
end
