class Post < ApplicationRecord
	belongs_to :page
	default_scope -> { order(created_at: :desc) }
	validates :page_id, presence: true
	validates :content, presence: true, length: { maximum: 140 }
end
