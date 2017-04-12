class RankingController < ApplicationController
  def have
    @title = "Haveランキング"
    item_ids = Have.group(:item_id).order('count(item_id) desc').limit(10).pluck(:item_id) 
    @items = Item.find(item_ids).sort_by{ |o| item_ids.index(o.id) }
    render :ranking
  end

  def want
    @title = "Wantランキング"
    item_ids = Want.group(:item_id).order('count(item_id) desc').limit(10).pluck(:item_id) 
    @items = Item.find(item_ids).sort_by{ |o| item_ids.index(o.id) }
    render :ranking
  end
end
