# encoding: utf-8

require 'helper'

class Nanoc::RDoc::FilterTest < Minitest::Test

  def test_filter
    # Get filter
    filter = ::Nanoc::RDoc::Filter.new

    # Run filter
    result = filter.run("= Foo")
    assert_match(%r{\A\s*<h1( id="label-Foo")?>Foo(<span>.*</span>)?</h1>\s*\Z}, result)
  end

end
