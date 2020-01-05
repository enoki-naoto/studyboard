require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  describe 'Get #new' do
        before {get :new}
        
        it 'HTTPリクエストが正常かどうか' do
            expect(response).to have_http_status(:ok)
        end

        it 'newテンプレートをレンダリングできているかどうか' do
            expect(response).to render_template :new
        end
        
        it '新しいtweetオブジェクトをビューに譲渡できているかどうか' do
            expect(assigns(:tweet)).to be_a_new Tweet
        end
    end
    
    describe 'POST #create' do
        context '正しいツイート情報が渡ってきた場合' do
            let(:params) do
             {tweet:{
                    text: 'text',
              }
             }
            end
            
            it 'ツイートが１つ増加しているかどうか' do
                expect { post :create, params: params }.to change(Tweet, :count).by(1)
            end
            
            it 'ツイート一覧ページにリダイレクトされているかどうか' do
                expect(post :create, params: params).to redirect_to(tweets_path)
            end
        end
    end
end
