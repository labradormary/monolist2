class RankingController < ApplicationController
    def have
       @have = Item.find(Have.group(:item_id).order('count(item_id) desc').limit(10).pluck(:item_id))
    end

    def want
        @want = Item.find(Want.group(:item_id).order('count(item_id) desc').limit(10).pluck(:item_id))
    end
    
    
   
end
