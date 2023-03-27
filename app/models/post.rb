class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy  #この行を追記
    def user
        #インスタンスメソッド内でselfはインスタンス自身を指す。
        return Post.find_by(id: self.id)
    end
      def posts
        return Post.where(user_id: self.id)
      end
end
