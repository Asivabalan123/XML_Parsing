require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.price_under_10.each do |price|
    expect(price.to_i).to be < 10
  end
end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.calories_less_100.each do |calories|
      expect(calories).to be < 1000
  end
end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    pending
  end
end
