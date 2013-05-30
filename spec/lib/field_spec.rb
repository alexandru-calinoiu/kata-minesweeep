require 'spec_helper'
require 'field'
require 'matrix'

describe Field do
  subject { Field.empty }

  it { should be_a_kind_of(Field) }

  it { should be_a_kind_of(Matrix) }
end