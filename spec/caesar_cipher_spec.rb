require "caesarcipher"

describe ".caesar_cipher" do
  context "given a string abc to shift right 3 times" do
    it "returns def" do
	  expect(caesar_cipher("abc", 3, "right")).to eql("def")
	end
  end

  context "given a string ABcD to shift right 1 time" do
	it "returns CBdE with original caps" do
		expect(caesar_cipher("ABcD", 1, "right")).to eql("BCdE")
	end
  end

  context "given an alphanumeric string with numbers abc123 to shift right 1 time" do
	it "returns CBdE with original caps" do
		expect(caesar_cipher("abc123", 1, "right")).to eql("bcd123")
	end
  end

  context "given a non-alphanumeric string !?' _ to shift right 2 times" do
  	it "returns the original string" do
  		expect(caesar_cipher("!?' _", 1, "right")).to eql("!?' _")
  	end
  end

  context "given an incorrect shift direction" do
  	it "returns a direction error message" do
  		expect(caesar_cipher("abc", 1, "diagonal")).to eql("Incorrect direction, please try again.")
  	end
  end

  context "given an incorrect shift count" do
  	it "returns a shift count error message" do
  		expect(caesar_cipher("abc", -5, "right")).to eql("Invalid shift count, please try again.")
  	end
  end

  context "given a string abc to shift left 3 times" do
  	it "returns def" do
	  expect(caesar_cipher("abc", 3, "left")).to eql("xyz")
	end
  end

end