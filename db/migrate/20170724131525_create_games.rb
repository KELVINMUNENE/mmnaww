class CreateGames < ActiveRecord::Migration[5.1]
  def change
  	  create_table(:lists) do |t|
      t.column(:name, :string)
      t.column(:amount, :int)
      t.column(:choice, :int)

      t.timestamps()
  end
  end
end
