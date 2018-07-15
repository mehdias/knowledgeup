class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string :title
      t.string :description
      t.string :written_by
      t.timestamps
    end
  end
end
