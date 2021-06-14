# frozen_string_literal: true

require "rw_validator"

RSpec.describe RwValidator do
  it "has a version number" do
    expect(RwValidator::VERSION).not_to be nil
  end
  it "has a summary" do
    expect(RwValidator::VERSION::SUMMARY).not_to be nil
  end
end
