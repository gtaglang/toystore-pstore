require 'helper'

describe Toy::PStore::Querying do
  uses_constants('User')

  before(:each) do
    User.send(:include, CallbacksHelper)
    User.attribute(:name, String)
    User.attribute(:bio, String)
  end
  
  describe "#get_multi" do
    before(:each) do
      @user1 = User.create :bio => 'test'
      @user2 = User.create :name => 'test2'
      @user3 = User.create :name => 'test3', :bio => 'blablabla'
      @users = User.get_multi(@user2.id, @user1.id, @user3.id)
    end

    it "returns multiple documents in correct order" do
      @users.should == [@user2, @user1, @user3]
    end
  end
end