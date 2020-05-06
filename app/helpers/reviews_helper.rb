module ReviewsHelper
  def status_for(review)
    if review.rating >= 0 && review.rating < 3
      "bad"
    elsif review.rating == 3
      "average"
    elsif review.rating >= 4
      "good"
    end
  end

  def stars_icons_for(review)
    html = ""
    review.rating.times do
      html << '<i class="fa fa-star" aria-hidden="true"></i>'
    end

    (5 - review.rating).times do
      html << '<i class="fa fa-star-o" aria-hidden="true"></i>'
    end

    return html.html_safe
  end

  def emoji_for(review)
    if review.rating >= 0 && review.rating < 3
      "👎"
    elsif review.rating == 3
      "🙌"
    elsif review.rating >= 4
      "👍"
    end
  end
end