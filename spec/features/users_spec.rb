require 'rails_helper'

RSpec.feature "Users", type: :feature do

  context "Criando novo usuario" do
    scenario "Deve criar usuario com sucesso"  do

      visit users_path

      click_link 'New Series'

      sleep 2

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'
      fill_in 'Age', with:10

      sleep 3

      click_button 'Create User'

      expect(page).to have_content('User was successfully created')

      end

    scenario "nao deveria criar usuario" do

      visit users_path

      click_link 'New Series'

      sleep 1

      fill_in 'Name', with:'Felipe'
      fill_in 'Email', with:'higor@higor'


      sleep 1

      click_button 'Create User'

      expect(page).to have_content("age can't be blank")

      end

    end
end

context "Editando usuario" do
  scenario "Deve ser criado com sucesso" , js:true do

    user = create(:user)
    infos= create(:info,user_id:user.id)

    visit users_path
    sleep 5
    click_link 'Edit'
    sleep 3

    fill_in 'Name', with:'Felipe'
    fill_in 'Email', with:'higor@higor'
    fill_in 'Age', with:10

    sleep 2

    click_button 'Update User'

    expect(page).to have_content("User was successfully updated.")

    sleep 1


  end

  scenario "Não deve ser criado" , js:true do

    visit users_path
    sleep 1
    click_link 'Edit'
    sleep 3

    fill_in 'Name', with:'Felipe'
    fill_in 'Email', with:'higor@higor'
    fill_in 'Age', with:''

    sleep 2

    click_button 'Update User'

    expect(page).to have_content("age can't be blank")

    sleep 1

    end


end
