module Toy
  module PStore
    module Querying
      extend ActiveSupport::Concern
      
      module ClassMethods
      
        def get_multi(*ids)
          ids  = ids.flatten
          store.client.transaction(true) do
            ids.map{|id| load(id, store.client[store.key_for(id)])}
          end
          # all(:_id => {'$in' => ids}).sort do |a, b|
          #   index_a = ids.index(a.id)
          #   index_b = ids.index(b.id)
          #   if index_a.nil? || index_b.nil?
          #     1
          #   else
          #     index_a <=> index_b
          #   end
          # end
        end
      end
    end
  end
end