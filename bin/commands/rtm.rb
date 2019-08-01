# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Rtm methods.'
command 'rtm' do |g|
  g.desc 'This method begins a Real Time Messaging API session and reserves your application a specific URL with which to connect via websocket.'
  g.long_desc %( This method begins a Real Time Messaging API session and reserves your application a specific URL with which to connect via websocket. )
  g.command 'connect' do |c|
    c.flag 'batch_presence_aware', desc: 'Batch presence deliveries via subscription. Enabling changes the shape of presence_change events. See batch presence.'
    c.flag 'presence_sub', desc: 'Only deliver presence events when requested by subscription. See presence subscriptions.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.rtm_connect(options))
    end
  end

  g.desc 'This method begins a Real Time Messaging API session and reserves your application a specific URL with which to connect via websocket.'
  g.long_desc %( This method begins a Real Time Messaging API session and reserves your application a specific URL with which to connect via websocket. )
  g.command 'start' do |c|
    c.flag 'batch_presence_aware', desc: 'Batch presence deliveries via subscription. Enabling changes the shape of presence_change events. See batch presence.'
    c.flag 'include_locale', desc: 'Set this to true to receive the locale for users and channels. Defaults to false.'
    c.flag 'mpim_aware', desc: 'Returns MPIMs to the client in the API response.'
    c.flag 'no_latest', desc: 'Exclude latest timestamps for channels, groups, mpims, and ims. Automatically sets no_unreads to 1.'
    c.flag 'no_unreads', desc: 'Skip unread counts for each channel (improves performance).'
    c.flag 'presence_sub', desc: 'Only deliver presence events when requested by subscription. See presence subscriptions.'
    c.flag 'simple_latest', desc: 'Return timestamp only for latest message object of each channel (improves performance).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.rtm_start(options))
    end
  end
end
