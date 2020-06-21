require_relative "application_cable/channel"
class TestChannel < ApplicationCable::Channel
  def subscribed
    super
    stream_from "test"
  end

end
