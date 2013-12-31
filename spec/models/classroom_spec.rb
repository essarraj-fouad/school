require "spec_helper"

describe Classroom do
  it { should have_many(:teachers) }
  it { should have_many(:students) }
  it { should validate_uniqueness_of(:level).scoped_to(:sublevel) }
end
