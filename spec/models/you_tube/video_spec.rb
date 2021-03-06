# frozen_string_literal: true
RSpec.describe YouTube::Video, type: :model do
  describe 'validations' do
    it { should have_many :playlists }
    it { should have_many :transcripts }

    context 'description' do
      it { should validate_length_of(:description).is_at_most(5000) }
      it { should_not allow_value("<angle\nbrackets>").for(:description) }
    end

    context 'title' do
      it { should validate_length_of(:title).is_at_least(1) }
      it { should validate_length_of(:title).is_at_most(100) }
      it { should_not allow_value('<anglebrackets>').for(:title) }
      it { should validate_presence_of :title }
    end

    it { should validate_presence_of :etag }
    it { should validate_presence_of :remote_video_id }

    context 'uniqueness' do
      subject { YouTube::Video.new(remote_video_id: 'xxx', etag: 'xxx', title: 'xxx', description: 'xxx') }

      it { should validate_uniqueness_of :etag }
      it { should validate_uniqueness_of :remote_video_id }
    end
  end

  context '#thumbnail' do
    subject { YouTube::Video.new(cache: { 'snippet' => { 'thumbnails' => { 'default' => {}, 'medium' => {}, 'high' => {}, 'standard' => {} } } }) }
    it 'returns a default thumbnail' do
      expect(subject.thumbnail).to be_an OpenStruct
    end

    it 'fails when given a non-standard thumbnail type' do
      expect { subject.thumbnail('nonstandard') }.to raise_error 'Unknown thumbnail size "nonstandard".'
    end
  end
end
