require "spec_helper"

describe Student do
  it { should belong_to(:classroom) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:classroom) }
  it { should validate_presence_of(:name) }
end
