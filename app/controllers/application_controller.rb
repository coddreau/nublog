class ApplicationController < ActionController::Metal
  include ActionController::Rendering
  include ActionController::Renderers::All
  include ActionController::ImplicitRender
  include ActionController::MimeResponds
  include AbstractController::Callbacks
  include ActionController::Instrumentation
  include ActionController::ParamsWrapper
  include ApplicationHelper
  
  wrap_parameters format: [:json]
end
