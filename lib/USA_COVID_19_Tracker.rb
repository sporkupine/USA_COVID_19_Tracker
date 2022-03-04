# frozen_string_literal: true

require_relative "USA_COVID_19_Tracker/version"

module USACOVID19Tracker
  class Error < StandardError; end
  # Your code goes here...
end

require "bcrypt"
require_relative "concerns/grabbable.rb"
require_relative "country.rb"
require_relative "state.rb"
require_relative "scraper.rb"
require_relative "user.rb"
require_relative "crud.rb"
require_relative "USA_COVID_19_Tracker/cli.rb"