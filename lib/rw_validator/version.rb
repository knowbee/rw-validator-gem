# frozen_string_literal: true

module RwValidator
  module VERSION
    MAJOR = 0
    MINOR = 1
    TINY  = 1
    PRE   = nil

    STRING = [MAJOR, MINOR, TINY, PRE].compact.join(".")

    SUMMARY = "rw_validator #{STRING}"
  end
end
