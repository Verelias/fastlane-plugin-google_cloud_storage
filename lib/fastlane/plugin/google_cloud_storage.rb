# frozen_string_literal: true

require 'fastlane/plugin/google_cloud_storage_update/version'

module Fastlane
  # Module for integrating with google_cloud_storage_update
  module GoogleCloudStorageUpdate
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::GoogleCloudStorageUpdate.all_classes.each do |current|
  require current
end
