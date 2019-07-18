RSpec.describe CsvSource do

  let :csv do
    CsvSource.new
  end

  context "instances" do
    it { expect(csv.respond_to?(:file)).to be_truthy }
    it { expect(csv.respond_to?(:each)).to be_truthy }
    it { expect(csv.file.class).to eql(CSV::Table) }
    it do
      csv.each do |row|
        expect(row.class).to eql(Hash)
      end
    end
  end
end