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
    array = []
    array1 = @menu.search('calories').to_a
    array1.each do |calories|
      if calories.text.to_i < 1000
        array << calories.text.to_i
      else
        array
    end
  end
  array
end

p = GuiseppesMenu.new
puts p.calories_less_100
