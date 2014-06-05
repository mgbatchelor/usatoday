class UsaToday

  def self.process(source)
    Net::Service.send_get(source.endpoint)['stories'].each do |story|
      guidHash = story["guid"].first
      s = Story.find_or_create_by!(guid: guidHash["value"])
      s.update_attributes!({
        source: source,
        title: story["title"],
        description: story["description"],
        link: story["link"],
        permalink: guidHash["isPermalink"],
        published_at: Time.parse(story["pubDate"])
      })
    end
  end

end
