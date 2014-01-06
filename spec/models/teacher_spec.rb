require "spec_helper"

describe Teacher do
  it { should belong_to(:classroom) }
  it { should have_many(:subjects) }
  it { should accept_nested_attributes_for(:subjects) }
  it { should validate_presence_of(:classroom) }
  it { should validate_presence_of(:name) }
end
