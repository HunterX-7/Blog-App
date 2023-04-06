class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :comments, foreign_key: 'post_id', dependent: :destroy
    has_many :likes, foreign_key: 'post_id', dependent: :destroy

    def update_posts_counter
        author.update(posts_counter: author.posts.count)
    end

    def recent_comments
        comments.order(created_at: :desc).limit(5)
    end
end