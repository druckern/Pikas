require './lib/pikas'

describe "pikas" do
    it "aaa" do
    #arrange
    pikas = Pikas.new
    
    #act
    result = pikas.GenerarNumero(4).length

    #assert
    result.should == 4
    end
end
