$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'array_zip_with'
require "codeclimate-test-reporter"
ENV['CODECLIMATE_REPO_TOKEN'] = "2968ce47ff44b739a4018a97df4d58015ec31c0c70b17820bf6fd4c255165599".freeze
CodeClimate::TestReporter.start
