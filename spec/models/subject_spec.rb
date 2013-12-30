require "spec_helper"

describe Subject do
  it { should belong_to(:teacher) }
end
