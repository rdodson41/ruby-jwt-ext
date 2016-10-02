require 'jwt/base'
require 'ostruct'

module JWT
  class OpenStruct < Base
    def self.decode(token)
      ::OpenStruct.new(super)
    end
  end
end
