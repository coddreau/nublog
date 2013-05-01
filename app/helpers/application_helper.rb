module ApplicationHelper
  def validation_error(object)
    { errors: object.errors }
  end
end
