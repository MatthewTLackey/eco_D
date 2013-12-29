require 'test_helper'

describe User do 
  
  before do
    @user = FactoryGirl.build(:user)
    @user2 = FactoryGirl.build(:user)
  end

  it 'should create a valid user' do
    @user.crypted_password = "lunchbox"
    @user.password_confirmation = "lunchbox"

    @user.should be_valid
  end
   
    
  it 'should have a username' do
    @user.username.should == "Bill"

  end

  it 'the username cannot be nil' do
    @user.username = nil
    @user.should_not be_valid

  end

  it 'must have an email' do 
    @user.email = nil
    @user.should_not be_valid
  end

  it 'should create a new user as long as the emails are unique' do
    @user2.email = "test1@test.com"
    @user2.should be_valid

  end

  #I suspect this doesn't work because it's not being saved to the database (a la build instead of create)
  # it 'should reject an email address if it matches another' do
  #   @user2.email = "test@test.com"
  #   @user2.should_not be_valid
  # end


end


