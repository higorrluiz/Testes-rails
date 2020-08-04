# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Users', type: :request do
  describe 'user#update' do
    context 'deve atualizar normalmente' do
      let!(:user) {FactoryBot.create(:user)}
      let!(:user_params) { { email: 'higor@higor' } }
      before(:each) do
        patch user_path(user.id), params: { id: user.id, user: user_params }
      end
      it { expect(response).to be_redirect }
      it { expect(response.code).to eq('302') }
    end

    context 'não deve atualizar' do
      let(:user) { create(:user) }
      let!(:user_params) { { email: 'invalido' } }
      before(:each) do
        patch user_path(user.id), params: { id: user.id, user: user_params }
      end
      it { expect(response.body).to include('Email is invalid') }
      it { expect(response.code).to eq('200') }
    end
  end
  describe 'user#delete' do
    let!(:user) { create(:user) }
    it 'retorna status 302' do
      delete user_path(user)
      expect(response.code).to eq('302')
    end
    it 'destroi o record' do
      delete user_path(user)
      expect { user.reload }.to raise_error ActiveRecord::RecordNotFound
    end
  end
end
