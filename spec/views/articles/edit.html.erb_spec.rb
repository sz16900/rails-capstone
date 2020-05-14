require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @seth = assign(:user, User.create(username: "szea", email: "szea@gmail.com", password: "123456789"))
    @article = assign(:article, Article.create!(
      author_id: @seth.id,
      title: "MyString",
      text: "MyText",
      image: "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[author_id]"

      assert_select "input[name=?]", "article[title]"

      assert_select "textarea[name=?]", "article[text]"

      assert_select "input[name=?]", "article[image]"
    end
  end
end
