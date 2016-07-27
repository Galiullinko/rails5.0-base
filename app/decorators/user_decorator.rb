class UserDecorator < Decorator

  def ha
    @record.full_name.to_s[1..-1]
  end
end
