# frozen_string_literal: true

require_relative "version"

module RwValidator
  class Error < StandardError; end

  # Validate class, validate phone number and national id
  class Validate
    def phone_number?(number)
      number.match(/^(\+?25)?(079|078|075|073|072)\d{7}$/).nil? ? false : true
    end

    def national_id?(id)
      return false if id.length < 16 || id.length > 16

      year_born = id[1..4]
      !id.match(/^[1-3](19|20)\d{2}[7-8]\d{7}[0-9]\d{2}$/).nil? && check_if_eligible?(year_born)
    end

    def check_if_eligible?(year_born)
      current_year = Time.new.year
      current_year.to_i - year_born.to_i >= 16
    end
  end
end
