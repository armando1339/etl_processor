RSpec.describe LoadData do
  subject { LoadData }
  before { subject.executed }
  it { expect(subject.expects).to include(:model, :collection) }
end