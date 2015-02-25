require_relative "../lib/asset_gen/source_asset"

module AssetGen
  RSpec.describe SourceAsset do
    it "generates a source asset" do
      path = File.join("spec", "output", "sample1.png")
      source_asset = SourceAsset.new(1242, 2208, "white", "black", 15)
      source_asset.generate(path)
      `open #{path}`
      expect { File.exists?(path).to be_true }
    end

    before(:context) do
      `rm spec/output/*.png`
    end
  end
end
