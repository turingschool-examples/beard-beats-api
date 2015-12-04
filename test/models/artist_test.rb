require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  test "Artist has many albums" do
    assert_equal Artist.reflect_on_association(:albums).macro, :has_many
  end

end
