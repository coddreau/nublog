class PostPresenter < BasePresenter
  build do |object|
    object.(@post, :title, :content, :slug)
  end
end
