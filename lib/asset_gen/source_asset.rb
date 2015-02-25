module AssetGen
  require 'mini_magick'

  class SourceAsset
    MiniMagick.configure do |config|
      config.timeout = 5
      config.debug = true
    end

    attr_accessor :ratio, :w, :h, :background, :stroke, :stroke_width

    def initialize(width, height, background = "xc:white", stroke = "black", stroke_width = 1)
      self.ratio = Rational(height, width)
      self.w = width
      self.h = height
      self.background = background
      self.stroke = stroke
      self.stroke_width = stroke_width
    end

    def generate(outfile)
      convert = MiniMagick::Tool::Convert.new
      convert.size(dimensions)
        .canvas(background)
        .fill(background)
        .stroke(stroke)
        .strokewidth(stroke_width)
        .draw("rectangle 0,0 #{w},#{h}")
        .draw("line 0,0 #{w},#{h}")
        .draw("line #{w},0 0,#{h}")
      convert << outfile
      convert.call
    end

    private

    def dimensions
      "#{self.w}x#{self.h}"
    end
  end
end
