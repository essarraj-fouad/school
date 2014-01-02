require "spec_helper"

describe Student do
  it { should belong_to(:classroom) }
  it { should validate_uniqueness_of(:name) }
end
