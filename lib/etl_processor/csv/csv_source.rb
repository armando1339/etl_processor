require 'csv'

class CsvSource
  attr_reader :file

  def initialize(file="#{Rails.root}/data_csv_units.csv")
    @file = CSV.read(file, headers: true)
  end

  def each
    file.each { |row| yield(row.to_h) }
  end
end
