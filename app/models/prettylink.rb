class Prettylink < ActiveRecord::Base
    belongs_to :user
    extend FriendlyId
    friendly_id :title, use: :slugged
    def self.find(user)
     friendly.find(user)
    end 
end
