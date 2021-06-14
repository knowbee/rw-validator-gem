require "rw_validator"

RSpec.describe RwValidator::Validate do
  validate = RwValidator::Validate.new

  it "should be false when id number is not given" do
    expect(validate.is_national_id?('')).to eq(false)
  end

  it "should be true if a valid id is given" do
    expect(validate.is_national_id?('1199978847374931')).to eq(true)
  end

  it "should be false if an invalid id is given" do
    expect(validate.is_national_id?('3399978847374931')).to eq(false)
  end

  it "should be false if invalid id with big size is given" do
    expect(validate.is_national_id?('11996722220000404')).to eq(false)  
  end

  it "should be false if id contains invalid year" do
    expect(validate.is_national_id?('1203072222000040')).to eq(false)  
  end
end
