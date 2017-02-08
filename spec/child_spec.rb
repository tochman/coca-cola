require 'spec_helper'
require './lib/child'

describe Child do

  it 'should be an instance of Child' do
    expect(Child.new).to be_an_instance_of Child
  end

end
