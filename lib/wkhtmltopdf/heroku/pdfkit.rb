require 'pdfkit'

PDFKit.configure do |config|
  config.wkhtmltopdf = Wkhtmltopdf::Heroku.executable
end

