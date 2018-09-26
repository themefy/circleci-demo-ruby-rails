class CreateEstimates < ActiveRecord::Migration[5.1]
  def change
    create_table :estimates do |t|
      t.string :title
      t.integer :source_invoice_id
    end
  end
end
