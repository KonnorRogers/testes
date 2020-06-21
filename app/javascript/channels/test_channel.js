import consumer from './consumer'

consumer.subscriptions.create(
  {
    channel: 'TestChannel',
    token: document.querySelector('meta[name=action-cable-auth-token]').content
  },
  {
    connected () {
      console.log('Token accepted')
    },
    rejected () {
      console.log('Token rejected')
    }
  }
)
