source "https://rubygems.org"

gem "jekyll", "~> 4.3.4"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17"
  gem "jekyll-sitemap", "~> 1.4"
  gem "jekyll-paginate", "~> 1.1", "< 2.0"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 2", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.8.0", :platforms => [:jruby]

# Additional required gems
gem "kramdown-parser-gfm" if ENV["JEKYLL_VERSION"] == "~> 3.9"
gem "webrick", "~> 1.8.1"

# Add gems that will no longer be included in Ruby >= 3.4.0
gem "bigdecimal", "~> 3.1.4"
gem "safe_yaml", "~> 1.0.5"
gem "base64", "~> 0.2.0"
gem "csv", "~> 3.3"

# Add gems that will no longer be included in Ruby >= 3.5.0
gem "logger", '~> 1.6'
gem 'ostruct', '~> 0.6.0'

# Theme
gem "termina-plex", "~> 1.0.6", "< 2.0"
