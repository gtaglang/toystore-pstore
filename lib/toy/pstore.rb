require 'toy'
require 'toy/pstore/querying'
require 'adapter/pstore'

module Toy
  module PStore
    extend ActiveSupport::Concern

    included do
      include Toy::Store
      include Querying
    end
  end
end
