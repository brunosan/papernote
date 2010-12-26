require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :uid => "0", :email => "test@example.com" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a UID" do
    no_uid_user = User.new(@attr.merge(:uid => ""))
    no_uid_user.should_not be_valid
  end
  
  it "UID should be unique" do
    User.create!(@attr)
    same_uid_user = User.new(@attr)
    same_uid_user.should_not be_valid
  end
  
  it "should require an email" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end
  
end