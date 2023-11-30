class CreateExtensions < ActiveRecord::Migration[7.1]
  def change
    create_table :extensions do |t|
      t.string :modalidade
      t.string :nome
      t.integer :horas
      t.string :orientador

      t.timestamps
    end
  end
end
