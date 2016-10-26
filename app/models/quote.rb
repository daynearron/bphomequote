class Quote < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :dob,       :validate => true
  attribute :phone,     :validate => true
  attribute :address,   :validate => true
  attribute :city,      :validate => true
  attribute :state,     :validate => true
  attribute :zip,       :validate => true
  attribute :property,  :validate => true
  attribute :new_usr,   :allow_blank => true
  attribute :additional_insured_name,   :allow_blank => true
  attribute :additional_insured_dob,   :allow_blank => true
  attribute :additional_insured_phone,   :allow_blank => true

  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Quote Request",
      :to => "joe@balboapacific.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end