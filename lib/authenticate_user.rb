# frozen_string_literal: true

require 'interactor'

class AuthenticateUser
  include Interactor

  def call
    if context.user.authenticate(context.password)
      context.authenticated = true
    else
      context.fail!
    end
  end
end
