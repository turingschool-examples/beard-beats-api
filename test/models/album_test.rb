require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  test "Album has many Songs" do
    assert_equal Album.reflect_on_association(:songs).macro, :has_many
  end

  test "Album belongs to an Artist" do
    assert_equal Album.reflect_on_association(:artist).macro, :belongs_to
  end

end
