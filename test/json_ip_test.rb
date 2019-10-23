require 'test_helper'

class JsonIpTest < ActiveSupport::TestCase
  test "returns an IP address" do
    stub_request(:get, "https://jsonip.org/").
      to_return(status: 200, body: '{"ip":"1.2.3.4","about":"/about"}', headers: {})

    assert_equal "1.2.3.4", JsonIp.ip
  end
end
