class UserSerializer
  def initialize(user)
    @user = user
  end

  def as_json
    {
      id: @user.id,
      email: @user.email,
      created_at: @user.created_at,
      name: @user.name,
      role: @user.role,
      created_date: @user.created_at&.strftime('%m/%d/%Y')
      # Add any other attributes you want to include
    }
  end
end
