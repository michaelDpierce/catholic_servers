require 'spec_helper'

feature 'Sign in', :devise do

  describe 'Static pages' do
    describe 'Dashboard' do
      before { visit '/' }

      it 'should have the content CatholicServers' do
        expect(page).to have_content('CatholicServers')
      end

      it 'should have the base title' do
        expect(page).to have_title('Catholic Servers')
      end
    end

    describe 'Sign In' do
      before { visit '/users/sign_in' }

      it 'should have the content Sign in' do
        expect(page).to have_content('Sign in')
      end
    end

    describe 'Sign Up' do
      before { visit '/users/sign_up' }

      it 'should have the content Sign up' do
        expect(page).to have_content('Sign up')
      end
    end

    describe 'Visit Signed In Pages' do

      before do
        user = FactoryGirl.create(:user)
        signin(user.email, user.password)
      end

      describe 'Members Directory' do
        before { visit '/users' }

        it 'should have the content Members' do
          expect(page).to have_content('Members')
        end
      end

      describe 'Parish Directory' do
        before { visit '/parishes' }

        it 'should have the content Parishes' do
          expect(page).to have_content('Parishes')
        end
      end

      describe 'New Parish' do
        before { visit '/parishes/new' }

        it 'should have the content New Parish' do
          expect(page).to have_content('New Parish')
        end
      end

      describe 'Edit Profile' do
        before { visit '/users/edit' }

        it 'should have the content Edit User' do
          expect(page).to have_content('Edit User')
        end
      end

    end
  end
end
