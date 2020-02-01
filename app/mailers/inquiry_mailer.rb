
class InquiryMailer < ActionMailer::Base
  default from: "example@example.com"   # 送信元アドレス
  default to: "find.999.com@gmail.com"     # 送信先アドレス
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end