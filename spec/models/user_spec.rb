require 'rails_helper'

RSpec.describe User, type: :model do
  it "nao valido quando senhas diferentes" do
    user = build(:user)
    expect(user).to be_valid
  end
end
