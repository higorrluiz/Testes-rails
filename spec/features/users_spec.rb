require 'rails_helper'

RSpec.feature "Users", type: :feature do

  context "Criando novo usuario" do
    scenario "Deve criar usuario com sucesso"  do

      visit users_path

      click_link 'New Series'

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'
      fill_in 'Age', with:10

      click_button 'Create User'

      expect(page).to have_content('User was successfully created')

    end

    scenario "nao deveria criar usuario" do

      visit users_path

      click_link 'New Series'

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'

      click_button 'Create User'

      expect(page).to have_content("age can't be blank")

    end

  end

  context "Editando usuario" do
    let!(:user) {FactoryBot.create(:user)}
    let!(:infos) {FactoryBot.create(:info, user:user)}
    scenario "Deve ser atualizado com sucesso"  do
      visit users_path

      click_link 'Edit'

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'
      fill_in 'Age', with:10

      click_button 'Update User'

      expect(page).to have_content("User was successfully updated.")

    end

    scenario "Não deve ser atualizado"  do

      visit users_path
      sleep 1
      click_link 'Edit'

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'
      fill_in 'Age', with:''

      click_button 'Update User'

      expect(page).to have_content("age can't be blank")

    end
  end

  context "Excluindo usuario" do

    scenario "Deve excluir com sucesso" do
      user = create(:user)
      infos= create(:info,user_id:user.id)
      visit users_path
      click_link 'Destroy'
      expect(page).to have_content("User was successfully destroyed.")

    end

  end

end
