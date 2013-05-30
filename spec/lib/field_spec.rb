require 'spec_helper'
require 'field'
require 'matrix'
require 'square'

describe Field do
  subject { Field.empty }

  it { should be_a_kind_of(Field) }

  it { should be_a_kind_of(Matrix) }

  describe '#square' do
    let(:field) {
      Field[
          [Square::MINE, Square::EMPTY],
          [Square::MINE, Square::EMPTY],
          [Square::EMPTY, Square::EMPTY]
      ]
    }

    context 'for a square with a mine' do
      subject { field.square(0, 0) }

      it { should == '*' }
    end

    context 'for a empty square' do
      subject { field.square(0, 1) }

      it { should == '2' }
    end

    context 'for a different empty square' do
      subject { field.square(2, 1) }

      it { should == '1' }
    end
  end

  describe '#to_output' do
    let(:field) {
      Field[
          [Square::MINE, Square::EMPTY],
          [Square::MINE, Square::EMPTY],
          [Square::EMPTY, Square::EMPTY]
      ]
    }

    subject { field.to_output }

    it { should == "*2\n*2\n11\n" }
  end
end