class ApplicationController < ActionController::Base
  before_action :basic_auth


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'funafuna63416341@gmail.com' && password == 'funa6341'
    end
  end
end
