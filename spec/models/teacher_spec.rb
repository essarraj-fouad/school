require "spec_helper"

describe Teacher do
  it { should belong_to(:classroom) }
  it { should have_many(:subjects) }
  it { should accept_nested_attributes_for(:subjects) }
end
