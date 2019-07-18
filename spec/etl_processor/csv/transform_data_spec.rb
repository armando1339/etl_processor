RSpec.describe TransformData do
  subject { TransformData }
  before { subject.executed }
  it { expect(subject.expects).to include(:collection) }
  it { expect(subject.promises).to include(:collection) }
end