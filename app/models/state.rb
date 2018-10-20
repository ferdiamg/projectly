class State < ApplicationRecord
    belongs_to :project

    def self.send_email
        @employees = Employee.all
        @employees.each do |e|
          NewsletterMailer.with(employee: @employee).newsletter_email.deliver_now
        end
        # @state.each do |s|
        #     #if s.maximum(:updated_at) >= Date.today( (-7).day )
        #     NewsletterMailer.with(employee: @employee).newsletter_email.deliver_now
        # end
    end
end