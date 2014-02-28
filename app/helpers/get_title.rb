module GetTitle

  def get_title(given_url)

    return Nokogiri::HTML(open("#{given_url}")).xpath("//title").inner_html
  end

end 