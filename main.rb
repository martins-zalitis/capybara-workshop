require_relative 'features/support/thread_runner'
require_relative 'features/support/optparser'

# format: 'json', threads: '2', report_path: "report/", environment: 'prod'
# option = { 'format' => 'json', 'threads' => '2', 'report_path' => 'report/', 'environment'  => 'prod'}
option = Optparse.parse(ARGV)
ThreadRunner.run(option)
