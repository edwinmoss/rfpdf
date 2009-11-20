module RFPDF
  module TemplateHandlers
    class Base < ::ActionView::TemplateHandlers::ERB
      
      def compile(template)
        # "_rfpdf_compile_setup;" +
        # "pdf = Prawn::Document.new(@rfpdf_options[:prawn]);" + 
        # "#{template.source}\n" +
        # "pdf.render;"
        src = "_rfpdf_compile_setup;" + super
      end
    end
  end
end


