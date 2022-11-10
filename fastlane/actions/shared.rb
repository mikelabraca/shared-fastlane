module Fastlane
  module Actions

    class SharedAction < Action
      def self.run(params)
        UI.message "🟢 shared action"
      end

      # Documentation

      def self.description
        'Shared action'
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end