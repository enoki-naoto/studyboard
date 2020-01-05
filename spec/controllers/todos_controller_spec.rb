require 'rails_helper'

RSpec.describe TodosController, type: :controller do
   describe 'Get #new' do
        before {get :new}
        
        it 'HTTPリクエストが正常かどうか' do
            expect(response).to have_http_status(:ok)
        end

        it 'newテンプレートをレンダリングできているかどうか' do
            expect(response).to render_template :new
        end
        
        it '新しいtweetオブジェクトをビューに譲渡できているかどうか' do
            expect(assigns(:todo)).to be_a_new Todo
        end
    end
    
    describe 'POST #create' do
        context '正しいツイート情報が渡ってきた場合' do
            let(:params) do
             {todo:{
                    list: 'list',
              }
             }
            end
            
            it 'Todoが１つ増加しているかどうか' do
                expect { post :create, params: params }.to change(Todo, :count).by(1)
            end
            
            it '学習計画ページにリダイレクトされているかどうか' do
                expect(post :create, params: params).to redirect_to(plan_path)
            end
        end
    end
end