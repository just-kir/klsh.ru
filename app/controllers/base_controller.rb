class BaseController < ApplicationController
  layout 'base'
  http_basic_authenticate_with name:"klsh",  password: "klsh"
  def index
  end

  def rules
  end
end
