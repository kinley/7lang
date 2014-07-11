require_relative "acts_as_csv_module.rb"

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end