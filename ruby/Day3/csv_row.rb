require_relative "acts_as_csv_row_module.rb"

class CsvRow # no inheritance! You can mix it in
  include ActsAsCsvRow
  acts_as_csv_row
end