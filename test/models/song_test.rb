require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "Song belongs to an Album" do
    assert_equal Song.reflect_on_association(:album).macro, :belongs_to
  end

end
