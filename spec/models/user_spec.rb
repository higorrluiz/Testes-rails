
require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    context "casos positivos" do
      let(:user) { create :user }
      subject {user}
      it { should have_one(:info) }
      it { should accept_nested_attributes_for(:info) }
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:password) }
      it { should validate_presence_of(:email)}
      it { should validate_presence_of(:password) }
      it {should validate_length_of(:password)}
      it {expect(user).to be_valid}
      end
    end

  describe "funçoes do model " do
    let!(:user) {FactoryBot.create(:user)}
    let!(:infos) {FactoryBot.create(:info, user:user)}
    it{expect(user.resumo).to eq('marcos é brazilian e tem 12 anos. Nascido no ano de 2008') }
  end
end
