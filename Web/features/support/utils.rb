require 'securerandom'

class Utils
  def self.random_password(length)
    while true
      password = SecureRandom.hex(length / 2)
      return password if password.match(/\d/)
    end
  end
end