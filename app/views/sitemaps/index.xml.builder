base_url = "https://#{request.host_with_port}"

xml.instruct! :xml, version: '1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url {
    xml.loc("https://www.ugtastic.com")
    xml.changefreq("weekly")
    xml.priority(1.0)
  }

  xml.url {
    xml.loc('https://www.ugtastic.com/interviews')
    xml.changefreq("daily")
    xml.priority(0.9)
  }

  @interviews.each do |interview|
    cache interview do
      xml.url {
        xml.loc(interview_url(interview, host: 'www.ugtastic.com', protocol: 'https://'))
        xml.changefreq('weekly')
        xml.priority(0.5)
      }
    end
  end
end
