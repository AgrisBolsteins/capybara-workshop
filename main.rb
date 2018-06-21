require_relative 'features/support/runner/thread_runner'
require_relative 'features/support/runner/optparser'

option = Optparse.parse(ARGS)
TreadRunner.run
(
# {format: 'html', path: '/report', thereads: '2', host: "https://apimation.com"}
option
)