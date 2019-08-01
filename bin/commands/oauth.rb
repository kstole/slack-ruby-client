# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Oauth methods.'
command 'oauth' do |g|
  g.desc 'This method allows you to exchange a temporary OAuth code for an API access token.'
  g.long_desc %( This method allows you to exchange a temporary OAuth code for an API access token. )
  g.command 'access' do |c|
    c.flag 'client_id', desc: 'Issued when you created your application.'
    c.flag 'client_secret', desc: 'Issued when you created your application.'
    c.flag 'code', desc: 'The code param returned via the OAuth callback.'
    c.flag 'redirect_uri', desc: 'This must match the originally submitted URI (if one was sent).'
    c.flag 'single_channel', desc: 'Request the user to add your app only to a single channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.oauth_access(options))
    end
  end

  g.desc 'This feature was exclusive to our workspace apps developer preview. The preview has now ended, but fan-favorite features such as token rotation and the Conversations API will become available to classic Slack apps over the coming months.'
  g.long_desc %( This feature was exclusive to our workspace apps developer preview. The preview has now ended, but fan-favorite features such as token rotation and the Conversations API will become available to classic Slack apps over the coming months. )
  g.command 'token' do |c|
    c.flag 'client_id', desc: 'Issued when you created your application.'
    c.flag 'client_secret', desc: 'Issued when you created your application.'
    c.flag 'code', desc: 'The code param returned via the OAuth callback.'
    c.flag 'redirect_uri', desc: 'This must match the originally submitted URI (if one was sent).'
    c.flag 'single_channel', desc: 'Request the user to add your app only to a single channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.oauth_token(options))
    end
  end
end
