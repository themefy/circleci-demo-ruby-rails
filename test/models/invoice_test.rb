require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  test 'records from external database' do
    Estimate.delete_all

    @connection = PG.connect(
      connect_timeout: 5,
      host: "localhost",
      dbname: "other_database",
      port: 5432,
      user: "postgres"
    )

    sql = 'SELECT invoice.id FROM invoice'
    res = @connection.exec(sql)

    assert_equal Estimate.all.count, 0

    res.each do |a|
      Estimate.create(title: 'Works', source_invoice_id: a['id'])
    end

    assert_equal Estimate.all.count, 5
  end
end