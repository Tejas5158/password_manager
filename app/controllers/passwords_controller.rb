class PasswordsController < ApplicationController
  def index
    @passwords = Password.all
  end

  def new
    @passwords =Password.all
  end
end
