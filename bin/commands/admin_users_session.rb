# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'AdminUsersSession methods.'
command 'admin_users_session' do |g|
  g.desc "This method wipes a user session, leaving the user unauthenticated. The user's Slack client will reset its local cache."
  g.long_desc %( This method wipes a user session, leaving the user unauthenticated. The user's Slack client will reset its local cache. )
  g.command 'reset' do |c|
    c.flag 'user_id', desc: 'The ID of the user to wipe sessions for.'
    c.flag 'mobile_only', desc: 'Only expire mobile sessions (default: false).'
    c.flag 'web_only', desc: 'Only expire web sessions (default: false).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_users_session_reset(options))
    end
  end
end
