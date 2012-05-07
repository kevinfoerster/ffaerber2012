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

class GetNestedAssets < Nanoc3::Filter
  identifier :getNestedAssets
  type :text

  def run(content, params={})
    filter                = params[:source]
    thumbnail_assets_path = []
    big_assets_path       = []      
    assets                = {}

    media = @items.select {|it| 
      it.identifier =~ %r{#{filter}} && it.binary? == true
    }
    
        
    media.each_with_index{|asset, index|
      big_assets_path << asset.path(:rep => :big)
      thumbnail_assets_path << asset.path(:rep => :thumbnail)      
    }
    
    assets[:big_assets_path]       = big_assets_path 
    assets[:thumbnail_assets_path] = thumbnail_assets_path

    assets 
  end
end
