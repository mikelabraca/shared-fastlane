module Fastlane
  module Actions

    class SharedTkAction < Action
      def self.run(params)
        UI.message "🟢 shared TK action"
      end

      # Documentation

      def self.description
        'Shared TK action'
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end