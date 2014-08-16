module ArticlesHelper
  def highlighted_title(article)
    if article.try(:highlight).try(:title)
      article.highlight.title[0].html_safe
    else
      article.title
    end
  end
end
