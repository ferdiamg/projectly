class NewsletterMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def newsletter_email
      @employee = Employee.first
      puts "Sending Mail..."
      @url  = 'http://example.com/login'
      mail(to: @employee.email, subject: 'Project.ly: Weekly Project Updates')
  end
end