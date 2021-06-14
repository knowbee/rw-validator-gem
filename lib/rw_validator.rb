require_relative "./rw_validator/validator"

module RwValidator

  class << self 
    def is_phone_number?(number)
      Validate.new.is_phone_number?(number)
    end

    def is_national_id?(id)
      Validate.new.is_national_id?(id)
    end
  end
end