source "http://gemcutter.org"

gem "rails", :git => "git://github.com/rails/rails.git" 
gem "clearance", :git => "git://github.com/thoughtbot/clearance.git", :branch => "rails3"
gem "haml"

group :development do
  gem "sqlite3-ruby", :require => "sqlite3"
  gem "mysql"
# heroku loads *all* gems and this breaks :/
#  gem "mongrel"
#  gem "cgi_multipart_eof_fix"
#  gem "fastthread"
#  gem "mongrel_experimental"
end

group :test do
  gem "shoulda", :git => "git://github.com/jasondew/shoulda.git", :branch => "rails3"
  gem "factory_girl", :git => "git://github.com/thoughtbot/factory_girl.git", :branch => "rails3"
end
