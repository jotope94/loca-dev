require "rails_helper"

RSpec.describe Post do
    describe "validations" do
        # it "should be valid when title id filled" do
        #     post = Post.new(title: "This is a nice post")
        #     expect(post.valid?).to eq true
        # end

        it { should validate_presence_of :title }
        it { should validate_length_of(:title).is_at_least(3) }
    end
end