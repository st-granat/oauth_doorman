# -*- encoding : utf-8 -*-

require File.join(File.dirname(__FILE__), '..', 'test_helper.rb')
require File.join(File.dirname(__FILE__), '..', '..', 'lib/api', 'oauth_user_info_api')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'oauth_doorman')

class OauthUserInfoApi_Test < Test::Unit::TestCase
  include OauthDoorman::DomainGroupsAPI

  context "*superclass" do
    setup do
      @doorman = OauthDoorman::Api.new()
    end

    should "*must have defined needed params" do
      assert_respond_to(@doorman, :access_token, nil)
    end
  end
end