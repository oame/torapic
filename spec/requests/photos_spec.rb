require 'spec_helper'

# describe "Photos" do
#   describe "GET /photos" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get photos_path
#       response.status.should be(200)
#     end
#   end
# end

describe API do
  describe 'Photos' do
    let(:user) { FactoryGirl.create(:user) }

    describe 'POST /api/v1/photos' do
      let(:image) { fixture_file_upload('sample.png', 'image/png') }

      context '正常な投稿' do
        subject { post '/api/v1/photos', { api_key: user.api_key, image: image } }

        let(:result) do
          {
            picture: {
              id: /\A\d+\z/,
              owner: {
                nickname: user.name,
              },
              token: sha1_matchar,
              image_url: image_url_matchar,
              created_at: datetime_matchar,
              updated_at: datetime_matchar
            }
          }
        end

        # it_behaves_like('201')
      end
    end
  end
end
