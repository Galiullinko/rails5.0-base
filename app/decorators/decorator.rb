class Decorator
  delegate :id, to: :record

  def initialize(record)
    @record = record
  end

  # class << self
  #   alias_method :decorate, :new
  # end

  def method_missing(method, *args, &block)
    @record.send(method, *args, &block)
  end
end
