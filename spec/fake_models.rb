module FakeModel
end

module FakeModelClass
  include ActiveModel::Conversion if defined? ActiveModel
  
  def self.included(base)
    base.extend ActiveModel::Naming if defined? ActiveModel
    base.extend ClassMethods
  end

  module ClassMethods
    def human_attribute_name(column)
      column.to_s.humanize
    end
  end
  
  def persisted?
    true
  end
end

class Person < Struct.new(:id, :name)
  include FakeModelClass
  alias_method :to_s, :name
end

class Project < Struct.new(:id, :name, :leader)
  include FakeModelClass
  alias_method :to_s, :name
end
