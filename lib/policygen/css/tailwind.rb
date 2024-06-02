module Policygen
  module Css
    class Tailwind
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
        @container_class = "container mx-auto px-4"
        @h1_class = "text-4xl font-bold #{Policygen.config.get_tailwind_config(:heading_color)}"
        @h2_class = "text-2xl mt-4 font-bold #{Policygen.config.get_tailwind_config(:heading_color)}"
        @h3_class = "text-xl mt-4 font-bold #{Policygen.config.get_tailwind_config(:heading_color)}"
        @section_class = "mt-8"
        @body_class = "mt-4 #{Policygen.config.get_tailwind_config(:body_color)}"
        @ul_class = "list-disc list-inside #{Policygen.config.get_tailwind_config(:body_color)}"
        @ol_class = "list-decimal list-inside #{Policygen.config.get_tailwind_config(:body_color)}"
        @bold_class = "font-bold"
        @link_class = "underline #{Policygen.config.get_tailwind_config(:link_color)}"
      end
    end
  end
end
