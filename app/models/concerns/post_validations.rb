module PostValidations
  extend ActiveSupport::Concern
  included do
    validates :title, length: { minimum: 2 }
    validates_presence_of :user_id, :content, :slug
  end
end
