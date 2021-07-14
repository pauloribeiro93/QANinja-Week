require "httparty"

module Helpers
  def delorean(email) #argumento e-mail
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
