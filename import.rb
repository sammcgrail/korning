# Use this file to import the sales information into the
# the database.
require "pry"
require "csv"
require "pg"

def db_connection
  begin
    binding.pry
    connection = PG.connect(dbname: "korning")
    yield(connection)
  ensure
    connection.close
  end
end

sql_statement = "INSERT INTO sales(
employee,
customer_and_account_no,
product_name,
sale_date,
sale_amount,
units_sold,
invoice_no,
invoice_frequency
)
VALUES($1, $2, $3, $4, $5, $6, $7, $8)"

table_headers = "employee,
customer_and_account_no,
product_name,
sale_date,
sale_amount,
units_sold,
invoice_no,
invoice_frequency"

def import_into_sales
  db_connection do |conn|
    CSV.foreach("sales.csv", headers: true) do |row|
end

def split_employee_info(row)
      employee_contact = row.delete(")").split(" (")
      employee_name = employee_contact[0]
      employee_email = employee_contact[1]
end

def split_customer_info(row)
      customer_info = row.delete(")").split(" (")
      customer_name = customer_info[0]
      customer_reference = customer_info[1]
end

      conn.exec_params("INSERT INTO sales")        # INFO
      conn.exec_params("INSERT INTO employee")
      conn.exec_params("INSERT INTO customer")
      conn.exec_params("INSERT INTO product")
      conn.exec_params("INSERT INTO invoice_frequency")

    end
  end
end





      # [employee, customer_and_account_no, product_name,
      #   sale_date, sale_amount, units_sold, invoice_no, invoice_frequency]
