require "rails_helper"

RSpec.describe "Post Management" do
    it "creates a post" do
        post "/posts", params: {
            post: {
                title: "what a great post",
                body: "Some very cool post is here, just come and read it!"
            }
        }

        expect(response).to redirect_to(post_url(Post.last.id))
    end

    it "return a post" do
        Post.create! title: "Beautiful post", body: "Some Knowledge"
        get "/posts/1", headers: {"Accept" => "application/json"}
        json = Json.parse(response.body)

        expect(json["title"]).to eq "Beautiful post"
        expect(json["body"]).to eq "Some Knowledge about something"
    end
end