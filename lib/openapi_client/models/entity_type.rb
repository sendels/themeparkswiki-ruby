=begin
#Theme Parks Wiki V1 API

#api.themeparks.wiki

The version of the OpenAPI document: 1.0.0-alpha

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module OpenapiClient
  class EntityType
    DESTINATION = "DESTINATION".freeze
    PARK = "PARK".freeze
    ATTRACTION = "ATTRACTION".freeze
    RESTAURANT = "RESTAURANT".freeze
    HOTEL = "HOTEL".freeze
    SHOW = "SHOW".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EntityType.constants.select { |c| EntityType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EntityType" if constantValues.empty?
      value
    end
  end
end