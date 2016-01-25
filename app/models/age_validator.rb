class AgeValidator < ActiveModel::Validator
  def validate(user)
    if (21.years.ago <= user.birthday)
      user.errors[:birthday] << 'You must be 21 years or older'
    end
  end
end
