 
# frozen_string_literal: true

require 'generator'

describe 'I want to' do
    before do
        @generator = Generator.new
    end

  it 'generate first item' do
    expect(@generator.generate).to eq '1'
  end

  it 'generate second item' do
    @generator.generate
    expect(@generator.generate).to eq '11'
  end

  it 'generate fourth item' do
    3.times do
        @generator.generate
    end
    expect(@generator.generate).to eq '1211'
  end


  it 'generate sixth item' do
    5.times do
      @generator.generate
    end
    expect(@generator.generate).to eq '312211'
  end
end