require 'spec_helper'
require './lib/child'

describe Child do

  let(:my_fridge) { double('Fridge', has_coke: true) }

  before do
    allow(my_fridge).to receive(:has_coke=).and_return(false)
  end

  it 'should be an instance of Child' do
    expect(subject).to be_an_instance_of Child
  end

  it 'has no coke when created' do
    expect(subject.has_coke).to eq false
  end

  it 'should be able to give me a can of Coke' do
    subject.fetch_coke(my_fridge)
    expect(subject).to have_coke
  end

end
