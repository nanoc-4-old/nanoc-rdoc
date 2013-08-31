# encoding: utf-8

require 'rdoc'

module Nanoc::RDoc

  class Filter < Nanoc::Filter

    identifier :rdoc

    def run(content, params={})
      options = ::RDoc::Options.new
      to_html = ::RDoc::Markup::ToHtml.new(options)
      ::RDoc::Markup.new.convert(content, to_html)
    end

  end

end
