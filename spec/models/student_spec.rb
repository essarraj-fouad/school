require "spec_helper"

describe Student do
  it { should belong_to(:classroom) }
end
