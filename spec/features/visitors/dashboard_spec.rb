feature 'Dashboard' do

  scenario 'visit the dashboard' do
    visit root_path
    expect(page).to have_content 'CatholicServers'
  end

end
