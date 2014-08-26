require 'spec_helper'

describe SpeedTests do
  before(:all) do
    @headless = Headless.new
    @headless.start
  end

  after(:all) do
    @headless.destroy
  end

  before(:each) do
    @array = []
  end

  context "Watir" do
    let(:b) { Watir::Browser.new }

    before(:all) do
      puts 'Watir'
    end

    before(:each) do
      b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      b.quit
    end

    it 'finds element by ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(id: "text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by CSS ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "#text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(class: "text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by CSS class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: ".text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Text' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(text: "Text #{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by attribute only' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "[data-text-#{i}]").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by attribute value' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "[data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Name' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(name: "text#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by XPath' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(xpath: "//a[@data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

  end

  context "Watir with CSS" do
    let(:b) { Watir::Browser.new }

    before(:all) do
      Watir.prefer_css = true
      puts 'Watir with CSS'
    end

    after(:all) do
      Watir.prefer_css = false
    end

    before(:each) do
      b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      b.quit
    end

    it 'finds element by class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(class: "text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Text' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(text: "Text #{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Name' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(name: "text#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

  end

  context "Watirmark" do

    before(:all) do
      puts 'Watirmark'
    end

    let(:b) { @session.openbrowser }

    before(:each) do
      @session = Watirmark::Session.instance
      b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      @session.closebrowser
    end

    it 'finds element by ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(id: "text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by CSS ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "#text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(class: "text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by CSS class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: ".text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Text' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(text: "Text #{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by attribute only' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "[data-text-#{i}]").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by attribute value' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(css: "[data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Name' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(name: "text#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by XPath' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(xpath: "//a[@data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

  end

  context "Watirmark with CSS" do

    before(:all) do
      puts 'Watirmark with CSS'
      Watir.prefer_css = true
    end

    after(:all) do
      Watir.prefer_css = false
    end

    let(:b) { @session.openbrowser }

    before(:each) do
      @session = Watirmark::Session.instance
      b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      @session.closebrowser
    end

    it 'finds element by class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(class: "text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Text' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(text: "Text #{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Name' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.a(name: "text#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end
  end

  context "Webdriver" do
    let(:b) { Selenium::WebDriver.for :firefox }

    before(:all) do
      puts 'Webdriver'
    end

    before(:each) do
      b.get TEST_ELEMENTS_URL
    end

    after(:each) do
      b.quit
    end

    it 'finds elements by ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(id: "text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by CSS ID' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(css: "#text_#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(class: "text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by CSS class' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(css: ".text-#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by Text' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(link: "Text #{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by attribute only' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(css: "[data-text-#{i}]").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds elements by attribute value' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(css: "[data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by Name' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(name: "text#{i}").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

    it 'finds element by XPath' do
      15.times do
        start_time = Time.now
        (1..15).each do |i|
          b.first(xpath: "//a[@data-text='text#{i}']").text.should == "Text #{i}"
        end
        @array << Time.now - start_time
      end
      puts "#{RSpec.current_example.description} - #{result(@array)}"
    end

  end

end

def result(array)
  array.sort!
  array.delete_at(array.size-1)
  array.delete_at(0)
  sum = 0
  array.each { |i| sum+= i }
  average = sum/array.size
  "#{(average*1000).round.to_s} ms"
end


