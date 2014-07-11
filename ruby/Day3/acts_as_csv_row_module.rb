module ActsAsCsvRow

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv_row
      include InstanceMethods
    end
  end

  module InstanceMethods

    attr_accessor :row

    def initialize(headers, row)
      @row = {}
      headers.each_with_index do |val, i|
        @row[val] = row[i]
      end
    end

    def method_missing name, *args
      @row[name.to_s]
    end

  end

end