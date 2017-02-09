require 'spec_helper'
require './lib/child'

describe Child do

  before do
    allow(my_fridge).to receive(:has_coke=).and_return(false)
  end

  context 'fridge has a can of coke' do
   let(:my_fridge) { double('Fridge', has_coke?: true) }
   it 'should be an instance of Child' do
     expect(subject).to be_an_instance_of Child
   end

   it 'has no coke when created' do
     expect(subject).not_to have_coke
   end

   it 'should be able to give me a can of Coke' do
     subject.fetch_coke(my_fridge)
     expect(subject).to have_coke
   end
  end

  context 'fridge has no coke' do
    let(:my_fridge) { double('Fridge', has_coke?: false) }

    it 'so it raises an error' do
      expect { subject.fetch_coke(my_fridge) }
      .to raise_error RuntimeError, 'There is no coke'
    end
  end


end
