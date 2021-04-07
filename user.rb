# frozen_string_literal: true

class User
  attr_accessor :name, :email, :password

  def initialize(name = '', email = '', password = '')
    @name = name || ''
    @email = email || ''
    @password = password || ''
  end

  def authenticate(password = '')
    self.password == password
  end
end
