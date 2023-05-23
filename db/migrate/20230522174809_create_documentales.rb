class CreateDocumentales < ActiveRecord::Migration[7.0]
  def change
    create_table :documentales do |t|
      t.string :name
      t.string :sypnosis
      t.string :director

      t.timestamps
    end
  end
end
