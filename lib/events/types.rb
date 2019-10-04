module Events::Types
  CONVERSATION_CREATED = 'conversation.created'.freeze
  CONVERSATION_RESOLVED = 'conversation.resolved'.freeze
  CONVERSATION_READ = 'conversation.read'.freeze

  MESSAGE_CREATED = 'message.created'.freeze
  FIRST_REPLY_CREATED = 'first.reply.created'.freeze
  CONVERSATION_REOPENED = 'conversation.reopened'.freeze
  CONVERSATION_LOCK_TOGGLE = 'conversation.lock_toggle'.freeze
  ASSIGNEE_CHANGED = 'assignee.changed'.freeze

  ACCOUNT_CREATED = 'account.created'.freeze
  ACCOUNT_DESTROYED = 'account.destroyed'.freeze

  AGENT_ADDED = 'agent.added'.freeze
  AGENT_REMOVED = 'agent.removed'.freeze

  SUBSCRIPTION_CREATED = 'subscription.created'.freeze
  SUBSCRIPTION_REACTIVATED = 'subscription.reactivated'.freeze
  SUBSCRIPTION_DEACTIVATED = 'subscription.deactivated'.freeze
end
