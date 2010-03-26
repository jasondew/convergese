require "test_helper"

class SessionTest < ActiveSupport::TestCase

  context "a session" do

    should "be valid from the factory" do
      assert_valid Factory.build(:session)
    end

  end

end
