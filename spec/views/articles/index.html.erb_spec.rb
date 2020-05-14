require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        author_id: 2,
        title: "Title",
        text: "MyText",
        image: "Image"
      ),
      Article.create!(
        author_id: 2,
        title: "Title",
        text: "MyText",
        image: "Image"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
