source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem "stimulus_reflex", github: "leastbad/stimulus_reflex", branch: "params"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'pry-rails'
end
