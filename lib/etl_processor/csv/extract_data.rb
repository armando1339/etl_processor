class ExtractData
  extend LightService::Action
  promises :collection

  executed do |context|
    csv = CsvSource.new
    context.collection = []
    csv.each { |row| context.collection << row }
  end
end
