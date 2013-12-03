require 'spec_helper'

describe User do

  it { should have_many :photos }
  it { should have_many :likes }
  it { should have_many :orders }
  
end
