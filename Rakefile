# frozen_string_literal: true

require "bundler/gem_tasks"
Bundler::GemHelper.install_tasks

require "minitest/test_task"

Minitest::TestTask.create

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test]
