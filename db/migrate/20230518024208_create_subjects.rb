class CreateSubjects < ActiveRecord::Migration[6.1]
  def change

    create_table :subjects do |t|

      t.string :name
      t.string :description
      t.string :url
      t.string :resources
      t.timestamps

    end
  end
end


