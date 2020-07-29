
require 'rails_helper'

RSpec.describe User, type: :model do
  it "resumo deve passar" do
    user = create(:user)
    infos= create(:info,user_id:user.id)
    expect(user.resumo).to eq('marcos é brazilian e tem 12 anos. Nascido no ano de 2008')
  end
end
