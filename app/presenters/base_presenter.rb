class BasePresenter
  
  def initialize resource, options={}
    @resource_name = if resource.class < ActiveRecord::Relation
      resource.class.to_s[/([A-Za-z]+)$/, 1].tableize
    else
      resource.class.to_s.underscore
    end
    instance_variable_set "@#{@resource_name}", resource
    @options = options
  end
  
  def self.build &block
    class_variable_set :@@builder, block
  end
  
  def as_json(*)
    jbuilder = Jbuilder.new
    instance_exec jbuilder, &self.class.class_variable_get(:@@builder)
    if @options[:root] == false
      jbuilder.attributes!
    else
      { @resource_name => jbuilder.attributes! }
    end
  end
  
end
