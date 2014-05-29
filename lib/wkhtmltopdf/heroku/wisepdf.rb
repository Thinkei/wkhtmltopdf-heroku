require 'wisepdf'

Wisepdf::Configuration.configure do |config|
  config.wkhtmltopdf = Wkhtmltopdf::Heroku.executable
end

