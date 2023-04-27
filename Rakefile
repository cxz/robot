# frozen_string_literal: true

require 'rake/testtask'

task default: %w[test]

require 'minitest/reporters'
Minitest::Reporters.use!

Rake::TestTask.new do |t|
  t.pattern = 'test/test*.rb'
end
