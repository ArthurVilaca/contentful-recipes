module ApplicationHelper
  def contentful
    @client ||= Contentful::Client.new(
      space: ENV['CONTENTFUL_SPACE'],
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
