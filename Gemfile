source 'http://gemcutter.org'

gem "rails", "3.0.0.beta"
gem "sqlite3-ruby", :require => "sqlite3"
gem "haml"

# for mongrel, only in dev so we don't screw up herkou
group :development do
  gem "mongrel"
  gem "cgi_multipart_eof_fix"
  gem "fastthread"
  gem "mongrel_experimental"
end

group :test do
  gem "shoulda"
  gem "factory_girl"
end
