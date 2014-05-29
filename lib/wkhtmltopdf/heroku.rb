module Wkhtmltopdf
  module Heroku
    def self.executable
      @@executable ||= begin
        executable = if RUBY_PLATFORM =~ /darwin/
          'wkhtmltopdf-darwin'
        else
          'wkhtmltopdf-linux-amd64'
        end
        File.expand_path "../../../bin/#{executable}", __FILE__
      end
    end
  end
end

begin
  require 'wkhtmltopdf/heroku/pdfkit'
  require 'wkhtmltopdf/heroku/wicked_pdf'
  require 'wkhtmltopdf/heroku/wisepdf'
rescue LoadError
end

