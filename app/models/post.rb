class Post < ApplicationRecord
    belongs_to :user
    #タグ機能の追加
    acts_as_taggable_on :labels #post.label_listが追加される
    acts_as_taggable_on         #acts_as_taggable_on :tagsのエイリアス
    #以上2行によりpost.tag_list・post.labelなどのメソッドが使用できるようになる
    validates :user_id, presence: true

    acts_as_ordered_taggable_on :mytags, :mycompanies
end
