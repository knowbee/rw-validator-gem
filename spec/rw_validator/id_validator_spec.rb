require "rw_validator/validator"

RSpec.describe RwValidator::Validate do
  validate = RwValidator::Validate.new

  it "should show an error message when id number is not given" do
    expect(validate.is_national_id?('')).to eq(false)
  end

  it "should be true if a valid id is given" do
    expect(validate.is_national_id?('1199978847374931')).to eq(true)
  end

  it "should be false if a invalid id is given" do
    expect(validate.is_national_id?('3399978847374931')).to eq(false)
  end

  it "should be false if id with big size is given" do
    expect(validate.is_national_id?('11996722220000404')).to eq(false)  
  end

  it "should be false if id is of a person not eligible for holding id" do
    expect(validate.is_national_id?('1203072222000040')).to eq(false)  
  end
end
