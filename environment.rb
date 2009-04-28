begin
  require('htmlentities') 
rescue LoadError
  # This gem is not required - just nice to have.
end
require('cgi')

require "#{File.dirname __FILE__}/lib/core/view"
require "#{File.dirname __FILE__}/lib/core/rfpdf"

begin
  require 'RMagick'
  require "#{File.dirname __FILE__}/lib/core/rmagick"
rescue LoadError
  require 'image_science'
  require "#{File.dirname __FILE__}/lib/core/image_science"
end

require "#{File.dirname __FILE__}/lib/math"

require "#{File.dirname __FILE__}/lib/tcpdf"

require "#{File.dirname __FILE__}/lib/fpdf/errors"
require "#{File.dirname __FILE__}/lib/fpdf/fpdf"
require "#{File.dirname __FILE__}/lib/fpdf/chinese"
require "#{File.dirname __FILE__}/lib/fpdf/japanese"
require "#{File.dirname __FILE__}/lib/fpdf/korean"

ActionView::Template::register_template_handler 'rfpdf', RFPDF::View
Mime::Type.register "application/pdf", :pdf
