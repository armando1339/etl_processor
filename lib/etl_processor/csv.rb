require_relative 'csv/csv_source'
require_relative 'csv/extract_data'
require_relative 'csv/transform_data'
require_relative 'csv/load_data'

module EtlProcessor
  class Csv
    extend LightService::Organizer

    def self.call(args = {})
      with(args).reduce(
        ExtractData,
        TransformData,
        LoadData
      )
    end
  end
end