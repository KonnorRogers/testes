# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def index
    puts "My name is #{current_user}!"
  end
end
