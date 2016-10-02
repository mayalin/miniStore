class ApplicationMailer < ActionMailer::Base
  default from: 'service@unisa.herokuapp.com'
  layout 'mailer'
end
