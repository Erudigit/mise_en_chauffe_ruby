require_relative '../lib/cesar_cipher'

describe "cesar_cipher to script a string" do
    it "script in ASCII by shifting the number ascii" do
      expect(cesar_cipher("a", 3)).to eq("d")
      expect(cesar_cipher("z", 4)).to eq("d")
      expect(cesar_cipher("lol", 5)).to eq("qtq")
      expect(cesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
      expect(cesar_cipher("Bonjour je MAP", 15)).to eq("Qdcydjg yt BPE")
    end
end