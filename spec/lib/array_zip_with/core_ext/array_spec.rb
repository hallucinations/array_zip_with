require 'spec_helper'

describe Array do
  describe "#zipWith" do
    subject { [1, 2, 3] }
    context "when no block or symbol given" do
      it "raises ArgumentError" do
        expect { subject.zip_with([4, 5, 6]) }.to raise_error(ArgumentError)
      end
    end
    context "when a block is given" do
      it "yields the block with zipped array" do
        expect(subject.zip_with([4, 5, 6]) { |x, y| x + y}).to eq([5, 7, 9])
      end
    end
    context "when a symbol is given" do
      it "should reduce the array with the given operator" do
        expect(subject.zip_with([4, 5, 6], :+)).to eq([5, 7, 9])
      end
    end
  end
end
