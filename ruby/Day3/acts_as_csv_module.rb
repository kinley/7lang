require_relative "csv_row.rb"

module ActsAsCsv

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods

    def read
      @rows = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @rows << CsvRow.new(@headers, row.chomp.split(', '))
      end
    end

    def each(&block)
      @rows.each do |row|
        block.call row
      end
    end

    attr_accessor :headers, :rows

    def initialize
      read
    end

  end

end