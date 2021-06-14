# frozen_string_literal: true

require "rw_validator"

RSpec.describe RwValidator::Validate do
  validate = RwValidator::Validate.new

  it "should be false when phone number is not given" do
    expect(validate.phone_number?("")).to eq(false)
  end

  it "should be true if a valid mtn number is provided" do
    expect(validate.phone_number?("0788888888")).to eq(true)
  end
  it "should be true if a valid mtn number with country code is provided" do
    expect(validate.phone_number?("+250788888888")).to eq(true)
  end

  it "should be true if a valid airtel number is provided" do
    expect(validate.phone_number?("0737888888")).to eq(true)
  end
  it "should be true if a valid airtel number with country code is provided" do
    expect(validate.phone_number?("+250737888888")).to eq(true)
  end

  it "should be true if a valid tigo number is provided" do
    expect(validate.phone_number?("0727888888")).to eq(true)
  end
  it "should be true if a valid tigo number with country code is provided" do
    expect(validate.phone_number?("+250727888888")).to eq(true)
  end
end
