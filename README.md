```
Clone https://github.com/leastbad/stimulus_reflex to ~/stimulus_reflex and check out the params branch
Inside ~/stimulus_reflex/javascript run: yarn link

bundle config set local.stimulus_reflex ~/stimulus_reflex
Inside ~/testes run: yarn link stimulus_reflex

Log level set to :warn in config/environments/development.rb

Set the current token in app/controllers/application_controller.rb
"xxx" is the success value, anything else will fail

Good news is: this is working - by some less-than-perfect definition of working

Test channel will emit a message to the browser console regarding success/fail
Server console log will puts "My name is Steve!" if success

app/channels/test_channel.rb is where the critical require_relative lives

in this sample app, if you have the line in you will see
RAILS APP
RAILS APP

If I have the app open in my browser and restart puma, ActionCable reconnects and I see
INSIDE GEM
RAILS APP
which is .... very interesting

if that line is commented out and you restart puma, you will see
INSIDE GEM
INSIDE GEM

in my "real" app, I see
INSIDE GEM
RAILS APP
even if the require_relative is in place

What this tells me is that this is almost 100% certainly a module load order issue
Stephen's idea of including a module in SR that will be overridden later was brilliant

Ultimately, I would love a repeatable solution (no heisenbugs) that is minimally invasive
I don't think it's reasonable to expect anyone to require_relative in their channels
But this does already feel like progress

Help MUCH appreciated - I'm at the extents of my familiarity with Ruby modules in this moment
```