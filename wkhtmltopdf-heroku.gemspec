# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wkhtmltopdf/heroku/version"

Gem::Specification.new do |s|
  s.name        = "wkhtmltopdf-heroku"
  s.version     = Wkhtmltopdf::Heroku::VERSION
  s.authors     = ["Brad Phelan"]
  s.date        = "2012-05-27"
  s.email       = ["bradphelan@xtargets.com"]
  s.homepage    = "http://github.com/bradphelan/wkhtmltopdf-heroku"
  s.summary     = %q{wkhtmltopdf binaries for heroku}
  s.description = %q{wkhtmltopdf binaries for heroku}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.licenses      = ["MIT"]
end

