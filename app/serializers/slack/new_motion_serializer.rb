class Plugins::Diehard_FundWebhooks::Slack::NewMotionSerializer < Plugins::Diehard_FundWebhooks::Slack::BaseSerializer

  def attachment_fallback
    "*#{object.name}*\n#{object.description}\n"
  end

  def attachment_title
    slack_link_for(object)
  end

  def attachment_text
    "#{object.description}\n"
  end

  private

  def text_options
    {
      author: slack_link_for(object.author),
      name:   slack_link_for(object.discussion)
    }
  end

end
