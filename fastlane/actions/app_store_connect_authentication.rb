module Fastlane
  module Actions

    class AppStoreConnectAuthenticationAction < Action
      def self.run(params)
        UI.message "🟢 app store connect authentication action"
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