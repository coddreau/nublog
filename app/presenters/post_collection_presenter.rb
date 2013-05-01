class PostCollectionPresenter < BasePresenter
  build do |object|
    object.array! @posts.map{|post| PostPresenter.new(post, root: false).as_json}
  end
end
