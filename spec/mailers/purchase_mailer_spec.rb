require "spec_helper"

describe PurchaseMailer do
  describe "confirm_order" do
    let(:mail) { PurchaseMailer.confirm_order(create(:user), create(:order) ) }

    it "renders the headers" do
      mail.subject.should eq("Order Confirmation")
      mail.to.should eq(["willbell@gmail.com"])
      mail.from.should eq(["no_reply@insta_clone.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Default caption")
    end
  end

end
