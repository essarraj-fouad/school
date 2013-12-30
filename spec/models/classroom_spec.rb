require "spec_helper"

describe Classroom do
  it { should have_many(:teachers) }
  it { should have_many(:students) }
end
