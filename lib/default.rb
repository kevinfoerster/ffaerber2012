# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'RMagick'
require 'awesome_print'

class ResizeAndCropFilter < Nanoc3::Filter
  identifier :resizeAndCrop
  type :binary

  def run(filename, params={})  
    img   = Magick::ImageList.new(filename)
    thumb = img.resize_to_fill(params[:width], params[:height])
    thumb.write output_filename
  end
end

class GetNestedMedia < Nanoc3::Filter
  identifier :getNestedMedia
  type :text

  def run(content, params={})
    filter = params[:source]
    assets_path = []

    media = @items.select {|it| 
      it.identifier =~ %r{#{filter}} && it.binary? == true
    }
    
    ap media.each do |asset|
      ap '========='
      ap asset.path(:rep => :big)
    end


  end
end
