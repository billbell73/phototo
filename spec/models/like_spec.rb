require 'spec_helper'

describe Like do

  it { should belong_to :photo }
  it { should belong_to :user }
  
end
