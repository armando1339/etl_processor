RSpec.describe ExtractData do
  subject { ExtractData }
  before { subject.executed }
  it { expect(subject.promises).to include(:collection) }
end