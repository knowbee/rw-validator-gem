# frozen_string_literal: true

require_relative "./rw_validator/validator"

# RwValidator Module
module RwValidator
  class << self
    def phone_number?(number)
      Validate.new.phone_number?(number)
    end

    def national_id?(id)
      Validate.new.national_id?(id)
    end
  end
end
