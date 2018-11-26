require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def price_under_10
    price_string = @menu.search('price').text
    price = price_string.split '£'
  end

  def calories_less_100
    @menu.search('calories').text.to_i
  end

end
