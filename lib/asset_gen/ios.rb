module AssetGen
  module Ios
    SOURCE_DIMENSIONS = {
    }

    Devices = {
      iphone4: { res: [960, 640], suffix: "~iphone" },
      iphone5: { res: [1136, 640], suffix: "-568h@2x" },
      iphone6: { res: [1334, 750], suffix: "@2x" },
      iphone6plus: { res: [2208, 1242], suffix: "@3x" },
      ipad: { res: [1024, 768], suffix: "~ipad" },
      ipad_retina: { res: [2048, 1536], suffix: "@2x~ipad"}
    }
  end
end
