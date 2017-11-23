module ApiInterface
  module Presenter
    class ApiInformation

      def initialize(current_value="")
        @current_value = current_value
      end

      def for_select2
        a = []
        select_options.each_with_index do |option,index|
          a << ApiInterface::Presenter::SelectOption.new(option,index + 1,@current_value).format
        end
        a.to_json.html_safe
      end

      def select_options
        options_without_parent + groupings
      end

      def groupings
        a = []
        values_for_parent.each do |value| 
          a << { 
            "name" => value, 
            "children" => options_for_parent(value)
          } 
        end
        a
      end

      def values_for_parent
        options_with_parent.map{ |option| option["parent"] }.uniq
      end

      def options_with_parent
        options.select{ |info| info["parent"].present? }
      end

      def options_without_parent
        return [] if options == {}
        options.select{ |info| info["parent"].blank? } 
      end

      def options_for_parent(parent)
        options.select{ |info| info["parent"] == parent }
      end

      def options
        Rails.application.config_for(:api_options)
      end

      def default_option_url
        begin 
          return options_without_parent.first["value"] if options_without_parent.any?
          return groupings.first["children"].first["value"]
        rescue
          "/docs/start"
        end
      end

    end
  end
end