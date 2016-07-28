class UserDecorator < Decorator
  def ha
    @record.full_name.to_s[1..-1]
  end

  def full_name_with_email
    "#{@record.full_name} (#{@record.email})"
  end
end
