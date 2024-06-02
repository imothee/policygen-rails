module Policygen
  module Css
    class Classes
      attr_reader :container_class,
                  :h1_class,
                  :h2_class,
                  :h3_class,
                  :section_class,
                  :body_class,
                  :ul_class,
                  :ol_class,
                  :bold_class,
                  :link_class

      def initialize
        @container_class = "policygen-container"
        @h1_class = "policygen-h1"
        @h2_class = "policygen-h2"
        @h3_class = "policygen-h3"
        @section_class = "policygen-section"
        @body_class = "policygen-body-text"
        @ul_class = "policygen-ul"
        @ol_class = "policygen-ol"
        @bold_class = "policygen-bold"
        @link_class = "policygen-link"
      end
    end
  end
end
