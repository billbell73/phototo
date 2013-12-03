require 'spec_helper'

describe Charge do

  it { should belong_to :photo }
  it { should belong_to :user }
  
end
