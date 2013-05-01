class Post < ActiveRecord::Base
  include PostValidations
  
  attr_protected :user_id

  before_validation :slugify
  
  def slugify
    self.slug = title.parameterize if slug.blank?
  end
end
