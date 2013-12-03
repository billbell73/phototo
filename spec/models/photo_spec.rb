require 'spec_helper'

describe Photo do

  it { should belong_to :user }
  it { should have_and_belong_to_many :tags }
  it { should have_many(:users).through(:likes) }
  it { should have_many :orders }
  
end
