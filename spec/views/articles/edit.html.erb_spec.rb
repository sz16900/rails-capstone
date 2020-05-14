require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      author: 1,
      title: "MyString",
      text: "MyText",
      image: "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[author]"

      assert_select "input[name=?]", "article[title]"

      assert_select "textarea[name=?]", "article[text]"

      assert_select "input[name=?]", "article[image]"
    end
  end
end
