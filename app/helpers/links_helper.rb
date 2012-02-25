module LinksHelper
  def checked_link_class(links, link)
    links.include?(link) ? "exists" : "non-exists"
  end
end
