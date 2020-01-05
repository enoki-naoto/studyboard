require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe 'Get #new' do
        before {get :new}
        
        it 'HTTPリクエストが正常かどうか' do
            expect(response).to have_http_status(:ok)
        end

        it 'newテンプレートをレンダリングできているかどうか' do
            expect(response).to render_template :new
        end
        
        it '新しいuserオブジェクトをビューに譲渡できているかどうか' do
            expect(assigns(:user)).to be_a_new User
        end
    end
    
    describe 'POST #create' do
        context '正しいユーザー情報が渡ってきた場合' do
            let(:params) do
             {user:{
                    name: 'user',
                    email: 'email@co.jp',
                    password: 'password1234',
                    password_confirmation: 'password1234',
              }
             }
            end
            
            it 'ユーザーが１人増加しているかどうか' do
                expect { post :create, params: params }.to change(User, :count).by(1)
            end
            
            it 'ホームページにリダイレクトされているかどうか' do
                expect(post :create, params: params).to redirect_to(root_path)
            end
        end
    end
end
