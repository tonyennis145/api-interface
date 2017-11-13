module ApiInterface
  module Presenter
    class SelectOption

      def initialize(options,index=1,current_value="")
        @options = options
        @index = index
        @current_value = current_value
      end

      def format
        output = {}
        output[:id] = @index
        output[:text] = @options["name"]
        output[:children] = @options["children"].each_with_index.map{ |option,index| ApiInterface::Presenter::SelectOption.new(option,"#{@index}.#{index}",@current_value).format } if @options["children"].present?
        output[:value] = @options["value"] if @options["value"].present?
        output[:selected] = true if is_selected?
        output
      end

      def current_id
        @current_id || 1
      end

      def is_selected?
        true if @current_value == @options["value"]
      end

    end
  end
end