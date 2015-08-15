class Prettylink < ActiveRecord::Base
    belongs_to :user
    extend FriendlyId
    friendly_id :title, use: :slugged
    # friendly_id :slug_candidates, use: :title
    
end
