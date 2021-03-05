class RequestItem < ApplicationRecord

    belongs_to :item
    belongs_to :request

    def item_name
        self.item.name
    end

    def item_url
        self.item.image_url
    end

    def item_category
        self.item.category
    end

end
