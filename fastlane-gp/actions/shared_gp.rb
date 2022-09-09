module Fastlane
  module Actions

    class SharedGpAction < Action
      def self.run(params)
        UI.message "🟢 shared GP action"
      end

      # Documentation

      def self.description
        'Shared GP action'
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end