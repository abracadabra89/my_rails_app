class ApplicationController < ActionController::Base
    def hello
        render html: "hello, world!"
      end

      def about
      end
end
