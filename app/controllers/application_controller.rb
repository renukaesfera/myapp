class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  #after_filter :reset_last_captcha_code!
  after_action :reset_last_captcha_code!
end
