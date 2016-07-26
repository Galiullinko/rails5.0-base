class UserDecorator < Decorator
  def initialize(object)
    super
  end

  def full_name_without_first_letter
    @object.full_name.to_s[1..-1]
  end
end
