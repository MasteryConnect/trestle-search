require_relative "search/version"

require "trestle"

module Trestle
  module Search
    extend ActiveSupport::Autoload

    require_relative "search/builder"
    require_relative "search/controller"
    require_relative "search/resource"

    autoload_under "adapters" do
      autoload :ChewyAdapter
      autoload :ElasticsearchAdapter
      autoload :SunspotAdapter
    end

    autoload_under "query_builders" do
      autoload :ElasticsearchQueryBuilder
    end

  end
end

require_relative "search/engine" if defined?(Rails)
