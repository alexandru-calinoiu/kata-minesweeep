require 'spec_helper'
require 'minesweeper'

describe Minesweeper do
  subject { Minesweeper.new }

  it { should be_kind_of(Minesweeper) }
end