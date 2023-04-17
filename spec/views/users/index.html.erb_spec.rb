require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :feature do
  before(:each) do
    @first_user = User.create(
      name: 'Pedro Mandinga',
      photo: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Ill_dict_infernal_p0093-79_barbatos.jpg',
      bio: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      posts_counter: 0,
    )
    second_user = User.create(
      name: 'Simon Bolivar',
      photo: 'https://es.wikipedia.org/wiki/Sim%C3%B3n_Bol%C3%ADvar#/media/Archivo:Sim%C3%B3n_Bol%C3%ADvar,_1825.jpg',
      bio: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      posts_counter: 0,
    )
  end

  it 'shows the user info as it loads the page' do
    visit users_path
    expect(page).to have_content(@first_user.name)
  end
end
