require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'pp'

class Optparse
  CODES = %w(iso-2022-jp shift_jis euc-jp utf8 binary).freeze
  CODE_ALIASES = { 'jis' => 'iso-2022-jp', 'sjis' => 'shift_jis' }.freeze

  def self.parse(args)
    options = OpenStruct.new
    options.format = 'json'
    options.threads = '2'
    options.report_path = 'report/'
    options.environment = 'prod'
    options.grid = 'http://10.1.9.71:4444/wd/hub'
    options.browser = 'GRID-CHROME'

    opt_parser = OptionParser.new do |opts|
      opts.banner = 'Usage:ruby main.rb [options]'
      opts.separator ''
      opts.separator 'Specific options:'

      opts.on('-f', '--format [Format]', 'Report format [json/html]') do |format|
        options.format = format
      end

      opts.on('-t', '--threads [Count]', 'Cabybara thread count') do |threads|
        options.threads = threads
      end

      opts.on('-r', '--report [Path]', 'Report path [report/]') do |path|
        options.report_path = path
      end

      opts.on('-e', '--environment [ENV]', 'Environment [prod/stage]') do |env|
        options.environment = env
      end

      opts.on('-b', '--browser [CHROME]', 'Browser [CHROME/GRID-CHROME]') do |browser|
        options.browser = browser
      end

      opts.on('-g', '--grid [URL]', 'Grid Host [URL]') do |url|
        options.grid = url
      end

      opts.on_tail('-h', '--help', 'Show this message') do
        puts opts
        exit
      end
    end
    opt_parser.parse!(args)
    options
  end
end
