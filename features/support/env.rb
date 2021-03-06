require 'simplecov'
require 'simplecov-rcov-text'

class SimpleCov::Formatter::MergedFormatter
  def format(result)
    SimpleCov::Formatter::HTMLFormatter.new.format(result)
    SimpleCov::Formatter::RcovTextFormatter.new.format(result)
  end
end
SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter

SimpleCov.start

PROJECT_ROOT = File.expand_path("../../..", __FILE__)
$LOAD_PATH << File.join(PROJECT_ROOT, "lib")

require 'yaml'
require 'mensario' 
