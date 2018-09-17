# require 'rest-client' # included by betabot

class Bot::Plugin::Octo < Bot::Plugin
  def initialize(bot)
    @s = {
      trigger: { octocock: [:octocock, 0, 'octocock <query>'] },
      subscribe: false,
      source: 'https://www.google.com'
    }
    super(bot)
  end

  def octocock(m)
    operation = proc {
      Timeout.timeout(10) do
        results = get(m.args[0])
        result = results[0]
        result.nil? ? 'No results' : result
      end
    }
    callback = proc { |result|
      m.reply result
    }
    errback = proc { |e| Bot.log.info "Octocock: Failed to get query #{e}" }
    EM.defer(operation, callback, errback)
  end

  def get(query)
    r = Regexp.new(query, 'i')
    page = RestClient.get(@s[:source], 'Accept' => 'plain/text')
    page.body.lines.select do |l|
      r.match(l)
    end
  end
end
