# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'berubenic@gmail.com'
  layout 'mailer'
end
