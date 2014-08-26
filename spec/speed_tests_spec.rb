require 'spec_helper'

describe SpeedTests do
  before(:all) do
    @headless = Headless.new
    @headless.start
  end

  after(:all) do
    @headless.destroy
  end

  context "Watir" do
    let(:b) { Watir::Browser.new }

    before(:each) do
      b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      b.quit
    end

    15.times do
      it 'finds element by Text' do
        start_time = Time.now
        b.element(text: 'Text 001').text.should == "Text 001"
        b.element(text: 'Text 002').text.should == "Text 002"
        b.element(text: 'Text 003').text.should == "Text 003"
        b.element(text: 'Text 004').text.should == "Text 004"
        b.element(text: 'Text 005').text.should == "Text 005"
        b.element(text: 'Text 006').text.should == "Text 006"
        b.element(text: 'Text 007').text.should == "Text 007"
        b.element(text: 'Text 008').text.should == "Text 008"
        b.element(text: 'Text 009').text.should == "Text 009"
        b.element(text: 'Text 010').text.should == "Text 010"
        b.element(text: 'Text 011').text.should == "Text 011"
        b.element(text: 'Text 012').text.should == "Text 012"
        b.element(text: 'Text 013').text.should == "Text 013"
        b.element(text: 'Text 014').text.should == "Text 014"
        b.element(text: 'Text 015').text.should == "Text 015"
        b.element(text: 'Text 016').text.should == "Text 016"
        b.element(text: 'Text 017').text.should == "Text 017"
        b.element(text: 'Text 018').text.should == "Text 018"
        b.element(text: 'Text 019').text.should == "Text 019"
        b.element(text: 'Text 020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir Text - #{finish_time}"
      end
    end

    15.times do
      it 'finds element by ID' do
        start_time = Time.now
        b.element(id: 'text_001').text.should == "Text 001"
        b.element(id: 'text_002').text.should == "Text 002"
        b.element(id: 'text_003').text.should == "Text 003"
        b.element(id: 'text_004').text.should == "Text 004"
        b.element(id: 'text_005').text.should == "Text 005"
        b.element(id: 'text_006').text.should == "Text 006"
        b.element(id: 'text_007').text.should == "Text 007"
        b.element(id: 'text_008').text.should == "Text 008"
        b.element(id: 'text_009').text.should == "Text 009"
        b.element(id: 'text_010').text.should == "Text 010"
        b.element(id: 'text_011').text.should == "Text 011"
        b.element(id: 'text_012').text.should == "Text 012"
        b.element(id: 'text_013').text.should == "Text 013"
        b.element(id: 'text_014').text.should == "Text 014"
        b.element(id: 'text_015').text.should == "Text 015"
        b.element(id: 'text_016').text.should == "Text 016"
        b.element(id: 'text_017').text.should == "Text 017"
        b.element(id: 'text_018').text.should == "Text 018"
        b.element(id: 'text_019').text.should == "Text 019"
        b.element(id: 'text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir ID - #{finish_time}"
      end
    end
    15.times do

      it 'finds element by CSS ID' do
        start_time = Time.now
        b.element(css: '#text_001').text.should == "Text 001"
        b.element(css: '#text_002').text.should == "Text 002"
        b.element(css: '#text_003').text.should == "Text 003"
        b.element(css: '#text_004').text.should == "Text 004"
        b.element(css: '#text_005').text.should == "Text 005"
        b.element(css: '#text_006').text.should == "Text 006"
        b.element(css: '#text_007').text.should == "Text 007"
        b.element(css: '#text_008').text.should == "Text 008"
        b.element(css: '#text_009').text.should == "Text 009"
        b.element(css: '#text_010').text.should == "Text 010"
        b.element(css: '#text_011').text.should == "Text 011"
        b.element(css: '#text_012').text.should == "Text 012"
        b.element(css: '#text_013').text.should == "Text 013"
        b.element(css: '#text_014').text.should == "Text 014"
        b.element(css: '#text_015').text.should == "Text 015"
        b.element(css: '#text_016').text.should == "Text 016"
        b.element(css: '#text_017').text.should == "Text 017"
        b.element(css: '#text_018').text.should == "Text 018"
        b.element(css: '#text_019').text.should == "Text 019"
        b.element(css: '#text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir CSS ID - #{finish_time}"
      end


    end
    15.times do
      it "finds element by class" do
        start_time = Time.now
        b.element(css: '.text-001').text.should == "Text 001"
        b.element(css: '.text-002').text.should == "Text 002"
        b.element(css: '.text-003').text.should == "Text 003"
        b.element(css: '.text-004').text.should == "Text 004"
        b.element(css: '.text-005').text.should == "Text 005"
        b.element(css: '.text-006').text.should == "Text 006"
        b.element(css: '.text-007').text.should == "Text 007"
        b.element(css: '.text-008').text.should == "Text 008"
        b.element(css: '.text-009').text.should == "Text 009"
        b.element(css: '.text-010').text.should == "Text 010"
        b.element(css: '.text-011').text.should == "Text 011"
        b.element(css: '.text-012').text.should == "Text 012"
        b.element(css: '.text-013').text.should == "Text 013"
        b.element(css: '.text-014').text.should == "Text 014"
        b.element(css: '.text-015').text.should == "Text 015"
        b.element(css: '.text-016').text.should == "Text 016"
        b.element(css: '.text-017').text.should == "Text 017"
        b.element(css: '.text-018').text.should == "Text 018"
        b.element(css: '.text-019').text.should == "Text 019"
        b.element(css: '.text-020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir Class - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute" do
        start_time = Time.now
        b.element(css: '[data-text-001]').text.should == "Text 001"
        b.element(css: '[data-text-002]').text.should == "Text 002"
        b.element(css: '[data-text-003]').text.should == "Text 003"
        b.element(css: '[data-text-004]').text.should == "Text 004"
        b.element(css: '[data-text-005]').text.should == "Text 005"
        b.element(css: '[data-text-006]').text.should == "Text 006"
        b.element(css: '[data-text-007]').text.should == "Text 007"
        b.element(css: '[data-text-008]').text.should == "Text 008"
        b.element(css: '[data-text-009]').text.should == "Text 009"
        b.element(css: '[data-text-010]').text.should == "Text 010"
        b.element(css: '[data-text-011]').text.should == "Text 011"
        b.element(css: '[data-text-012]').text.should == "Text 012"
        b.element(css: '[data-text-013]').text.should == "Text 013"
        b.element(css: '[data-text-014]').text.should == "Text 014"
        b.element(css: '[data-text-015]').text.should == "Text 015"
        b.element(css: '[data-text-016]').text.should == "Text 016"
        b.element(css: '[data-text-017]').text.should == "Text 017"
        b.element(css: '[data-text-018]').text.should == "Text 018"
        b.element(css: '[data-text-019]').text.should == "Text 019"
        b.element(css: '[data-text-020]').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir attribute - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute value" do
        start_time = Time.now
        b.element(css: "[data-text='text001']").text.should == "Text 001"
        b.element(css: "[data-text='text002']").text.should == "Text 002"
        b.element(css: "[data-text='text003']").text.should == "Text 003"
        b.element(css: "[data-text='text004']").text.should == "Text 004"
        b.element(css: "[data-text='text005']").text.should == "Text 005"
        b.element(css: "[data-text='text006']").text.should == "Text 006"
        b.element(css: "[data-text='text007']").text.should == "Text 007"
        b.element(css: "[data-text='text008']").text.should == "Text 008"
        b.element(css: "[data-text='text009']").text.should == "Text 009"
        b.element(css: "[data-text='text010']").text.should == "Text 010"
        b.element(css: "[data-text='text011']").text.should == "Text 011"
        b.element(css: "[data-text='text012']").text.should == "Text 012"
        b.element(css: "[data-text='text013']").text.should == "Text 013"
        b.element(css: "[data-text='text014']").text.should == "Text 014"
        b.element(css: "[data-text='text015']").text.should == "Text 015"
        b.element(css: "[data-text='text016']").text.should == "Text 016"
        b.element(css: "[data-text='text017']").text.should == "Text 017"
        b.element(css: "[data-text='text018']").text.should == "Text 018"
        b.element(css: "[data-text='text019']").text.should == "Text 019"
        b.element(css: "[data-text='text020']").text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watir attribute value - #{finish_time}"
      end

    end
  end

  context "Watir with CSS" do
    let(:b) { Watir::Browser.new }

    before(:all) do
      Watir.prefer_css = true
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

    15.times do
      it 'finds element by Text' do
        start_time = Time.now
        b.element(text: 'Text 001').text.should == "Text 001"
        b.element(text: 'Text 002').text.should == "Text 002"
        b.element(text: 'Text 003').text.should == "Text 003"
        b.element(text: 'Text 004').text.should == "Text 004"
        b.element(text: 'Text 005').text.should == "Text 005"
        b.element(text: 'Text 006').text.should == "Text 006"
        b.element(text: 'Text 007').text.should == "Text 007"
        b.element(text: 'Text 008').text.should == "Text 008"
        b.element(text: 'Text 009').text.should == "Text 009"
        b.element(text: 'Text 010').text.should == "Text 010"
        b.element(text: 'Text 011').text.should == "Text 011"
        b.element(text: 'Text 012').text.should == "Text 012"
        b.element(text: 'Text 013').text.should == "Text 013"
        b.element(text: 'Text 014').text.should == "Text 014"
        b.element(text: 'Text 015').text.should == "Text 015"
        b.element(text: 'Text 016').text.should == "Text 016"
        b.element(text: 'Text 017').text.should == "Text 017"
        b.element(text: 'Text 018').text.should == "Text 018"
        b.element(text: 'Text 019').text.should == "Text 019"
        b.element(text: 'Text 020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir Text - #{finish_time}"
      end
    end

    15.times do
      it 'finds element by ID' do
        start_time = Time.now
        b.element(id: 'text_001').text.should == "Text 001"
        b.element(id: 'text_002').text.should == "Text 002"
        b.element(id: 'text_003').text.should == "Text 003"
        b.element(id: 'text_004').text.should == "Text 004"
        b.element(id: 'text_005').text.should == "Text 005"
        b.element(id: 'text_006').text.should == "Text 006"
        b.element(id: 'text_007').text.should == "Text 007"
        b.element(id: 'text_008').text.should == "Text 008"
        b.element(id: 'text_009').text.should == "Text 009"
        b.element(id: 'text_010').text.should == "Text 010"
        b.element(id: 'text_011').text.should == "Text 011"
        b.element(id: 'text_012').text.should == "Text 012"
        b.element(id: 'text_013').text.should == "Text 013"
        b.element(id: 'text_014').text.should == "Text 014"
        b.element(id: 'text_015').text.should == "Text 015"
        b.element(id: 'text_016').text.should == "Text 016"
        b.element(id: 'text_017').text.should == "Text 017"
        b.element(id: 'text_018').text.should == "Text 018"
        b.element(id: 'text_019').text.should == "Text 019"
        b.element(id: 'text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir ID - #{finish_time}"
      end
    end
    15.times do

      it 'finds element by CSS ID' do
        start_time = Time.now
        b.element(css: '#text_001').text.should == "Text 001"
        b.element(css: '#text_002').text.should == "Text 002"
        b.element(css: '#text_003').text.should == "Text 003"
        b.element(css: '#text_004').text.should == "Text 004"
        b.element(css: '#text_005').text.should == "Text 005"
        b.element(css: '#text_006').text.should == "Text 006"
        b.element(css: '#text_007').text.should == "Text 007"
        b.element(css: '#text_008').text.should == "Text 008"
        b.element(css: '#text_009').text.should == "Text 009"
        b.element(css: '#text_010').text.should == "Text 010"
        b.element(css: '#text_011').text.should == "Text 011"
        b.element(css: '#text_012').text.should == "Text 012"
        b.element(css: '#text_013').text.should == "Text 013"
        b.element(css: '#text_014').text.should == "Text 014"
        b.element(css: '#text_015').text.should == "Text 015"
        b.element(css: '#text_016').text.should == "Text 016"
        b.element(css: '#text_017').text.should == "Text 017"
        b.element(css: '#text_018').text.should == "Text 018"
        b.element(css: '#text_019').text.should == "Text 019"
        b.element(css: '#text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir CSS ID - #{finish_time}"
      end


    end
    15.times do
      it "finds element by class" do
        start_time = Time.now
        b.element(css: '.text-001').text.should == "Text 001"
        b.element(css: '.text-002').text.should == "Text 002"
        b.element(css: '.text-003').text.should == "Text 003"
        b.element(css: '.text-004').text.should == "Text 004"
        b.element(css: '.text-005').text.should == "Text 005"
        b.element(css: '.text-006').text.should == "Text 006"
        b.element(css: '.text-007').text.should == "Text 007"
        b.element(css: '.text-008').text.should == "Text 008"
        b.element(css: '.text-009').text.should == "Text 009"
        b.element(css: '.text-010').text.should == "Text 010"
        b.element(css: '.text-011').text.should == "Text 011"
        b.element(css: '.text-012').text.should == "Text 012"
        b.element(css: '.text-013').text.should == "Text 013"
        b.element(css: '.text-014').text.should == "Text 014"
        b.element(css: '.text-015').text.should == "Text 015"
        b.element(css: '.text-016').text.should == "Text 016"
        b.element(css: '.text-017').text.should == "Text 017"
        b.element(css: '.text-018').text.should == "Text 018"
        b.element(css: '.text-019').text.should == "Text 019"
        b.element(css: '.text-020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir Class - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute" do
        start_time = Time.now
        b.element(css: '[data-text-001]').text.should == "Text 001"
        b.element(css: '[data-text-002]').text.should == "Text 002"
        b.element(css: '[data-text-003]').text.should == "Text 003"
        b.element(css: '[data-text-004]').text.should == "Text 004"
        b.element(css: '[data-text-005]').text.should == "Text 005"
        b.element(css: '[data-text-006]').text.should == "Text 006"
        b.element(css: '[data-text-007]').text.should == "Text 007"
        b.element(css: '[data-text-008]').text.should == "Text 008"
        b.element(css: '[data-text-009]').text.should == "Text 009"
        b.element(css: '[data-text-010]').text.should == "Text 010"
        b.element(css: '[data-text-011]').text.should == "Text 011"
        b.element(css: '[data-text-012]').text.should == "Text 012"
        b.element(css: '[data-text-013]').text.should == "Text 013"
        b.element(css: '[data-text-014]').text.should == "Text 014"
        b.element(css: '[data-text-015]').text.should == "Text 015"
        b.element(css: '[data-text-016]').text.should == "Text 016"
        b.element(css: '[data-text-017]').text.should == "Text 017"
        b.element(css: '[data-text-018]').text.should == "Text 018"
        b.element(css: '[data-text-019]').text.should == "Text 019"
        b.element(css: '[data-text-020]').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir attribute - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute value" do
        start_time = Time.now
        b.element(css: "[data-text='text001']").text.should == "Text 001"
        b.element(css: "[data-text='text002']").text.should == "Text 002"
        b.element(css: "[data-text='text003']").text.should == "Text 003"
        b.element(css: "[data-text='text004']").text.should == "Text 004"
        b.element(css: "[data-text='text005']").text.should == "Text 005"
        b.element(css: "[data-text='text006']").text.should == "Text 006"
        b.element(css: "[data-text='text007']").text.should == "Text 007"
        b.element(css: "[data-text='text008']").text.should == "Text 008"
        b.element(css: "[data-text='text009']").text.should == "Text 009"
        b.element(css: "[data-text='text010']").text.should == "Text 010"
        b.element(css: "[data-text='text011']").text.should == "Text 011"
        b.element(css: "[data-text='text012']").text.should == "Text 012"
        b.element(css: "[data-text='text013']").text.should == "Text 013"
        b.element(css: "[data-text='text014']").text.should == "Text 014"
        b.element(css: "[data-text='text015']").text.should == "Text 015"
        b.element(css: "[data-text='text016']").text.should == "Text 016"
        b.element(css: "[data-text='text017']").text.should == "Text 017"
        b.element(css: "[data-text='text018']").text.should == "Text 018"
        b.element(css: "[data-text='text019']").text.should == "Text 019"
        b.element(css: "[data-text='text020']").text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "CSS Watir attribute value - #{finish_time}"
      end

    end
  end

  context "Watirmark" do

    before(:each) do
      @session = Watirmark::Session.instance
      @b = @session.openbrowser
      @b.goto TEST_ELEMENTS_URL
    end

    after(:each) do
      @session.closebrowser
    end

    15.times do
      it 'finds element by Text' do
        start_time = Time.now
        @b.element(text: 'Text 001').text.should == "Text 001"
        @b.element(text: 'Text 002').text.should == "Text 002"
        @b.element(text: 'Text 003').text.should == "Text 003"
        @b.element(text: 'Text 004').text.should == "Text 004"
        @b.element(text: 'Text 005').text.should == "Text 005"
        @b.element(text: 'Text 006').text.should == "Text 006"
        @b.element(text: 'Text 007').text.should == "Text 007"
        @b.element(text: 'Text 008').text.should == "Text 008"
        @b.element(text: 'Text 009').text.should == "Text 009"
        @b.element(text: 'Text 010').text.should == "Text 010"
        @b.element(text: 'Text 011').text.should == "Text 011"
        @b.element(text: 'Text 012').text.should == "Text 012"
        @b.element(text: 'Text 013').text.should == "Text 013"
        @b.element(text: 'Text 014').text.should == "Text 014"
        @b.element(text: 'Text 015').text.should == "Text 015"
        @b.element(text: 'Text 016').text.should == "Text 016"
        @b.element(text: 'Text 017').text.should == "Text 017"
        @b.element(text: 'Text 018').text.should == "Text 018"
        @b.element(text: 'Text 019').text.should == "Text 019"
        @b.element(text: 'Text 020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark Text - #{finish_time}"
      end
    end
    15.times do
      it 'finds element by ID' do
        start_time = Time.now
        @b.element(id: 'text_001').text.should == "Text 001"
        @b.element(id: 'text_002').text.should == "Text 002"
        @b.element(id: 'text_003').text.should == "Text 003"
        @b.element(id: 'text_004').text.should == "Text 004"
        @b.element(id: 'text_005').text.should == "Text 005"
        @b.element(id: 'text_006').text.should == "Text 006"
        @b.element(id: 'text_007').text.should == "Text 007"
        @b.element(id: 'text_008').text.should == "Text 008"
        @b.element(id: 'text_009').text.should == "Text 009"
        @b.element(id: 'text_010').text.should == "Text 010"
        @b.element(id: 'text_011').text.should == "Text 011"
        @b.element(id: 'text_012').text.should == "Text 012"
        @b.element(id: 'text_013').text.should == "Text 013"
        @b.element(id: 'text_014').text.should == "Text 014"
        @b.element(id: 'text_015').text.should == "Text 015"
        @b.element(id: 'text_016').text.should == "Text 016"
        @b.element(id: 'text_017').text.should == "Text 017"
        @b.element(id: 'text_018').text.should == "Text 018"
        @b.element(id: 'text_019').text.should == "Text 019"
        @b.element(id: 'text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark ID - #{finish_time}"
      end
    end
    15.times do

      it 'finds element by CSS ID' do
        start_time = Time.now
        @b.element(css: '#text_001').text.should == "Text 001"
        @b.element(css: '#text_002').text.should == "Text 002"
        @b.element(css: '#text_003').text.should == "Text 003"
        @b.element(css: '#text_004').text.should == "Text 004"
        @b.element(css: '#text_005').text.should == "Text 005"
        @b.element(css: '#text_006').text.should == "Text 006"
        @b.element(css: '#text_007').text.should == "Text 007"
        @b.element(css: '#text_008').text.should == "Text 008"
        @b.element(css: '#text_009').text.should == "Text 009"
        @b.element(css: '#text_010').text.should == "Text 010"
        @b.element(css: '#text_011').text.should == "Text 011"
        @b.element(css: '#text_012').text.should == "Text 012"
        @b.element(css: '#text_013').text.should == "Text 013"
        @b.element(css: '#text_014').text.should == "Text 014"
        @b.element(css: '#text_015').text.should == "Text 015"
        @b.element(css: '#text_016').text.should == "Text 016"
        @b.element(css: '#text_017').text.should == "Text 017"
        @b.element(css: '#text_018').text.should == "Text 018"
        @b.element(css: '#text_019').text.should == "Text 019"
        @b.element(css: '#text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark CSS ID - #{finish_time}"
      end


    end
    15.times do
      it "finds element by class" do
        start_time = Time.now
        @b.element(css: '.text-001').text.should == "Text 001"
        @b.element(css: '.text-002').text.should == "Text 002"
        @b.element(css: '.text-003').text.should == "Text 003"
        @b.element(css: '.text-004').text.should == "Text 004"
        @b.element(css: '.text-005').text.should == "Text 005"
        @b.element(css: '.text-006').text.should == "Text 006"
        @b.element(css: '.text-007').text.should == "Text 007"
        @b.element(css: '.text-008').text.should == "Text 008"
        @b.element(css: '.text-009').text.should == "Text 009"
        @b.element(css: '.text-010').text.should == "Text 010"
        @b.element(css: '.text-011').text.should == "Text 011"
        @b.element(css: '.text-012').text.should == "Text 012"
        @b.element(css: '.text-013').text.should == "Text 013"
        @b.element(css: '.text-014').text.should == "Text 014"
        @b.element(css: '.text-015').text.should == "Text 015"
        @b.element(css: '.text-016').text.should == "Text 016"
        @b.element(css: '.text-017').text.should == "Text 017"
        @b.element(css: '.text-018').text.should == "Text 018"
        @b.element(css: '.text-019').text.should == "Text 019"
        @b.element(css: '.text-020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark Class - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute" do
        start_time = Time.now
        @b.element(css: '[data-text-001]').text.should == "Text 001"
        @b.element(css: '[data-text-002]').text.should == "Text 002"
        @b.element(css: '[data-text-003]').text.should == "Text 003"
        @b.element(css: '[data-text-004]').text.should == "Text 004"
        @b.element(css: '[data-text-005]').text.should == "Text 005"
        @b.element(css: '[data-text-006]').text.should == "Text 006"
        @b.element(css: '[data-text-007]').text.should == "Text 007"
        @b.element(css: '[data-text-008]').text.should == "Text 008"
        @b.element(css: '[data-text-009]').text.should == "Text 009"
        @b.element(css: '[data-text-010]').text.should == "Text 010"
        @b.element(css: '[data-text-011]').text.should == "Text 011"
        @b.element(css: '[data-text-012]').text.should == "Text 012"
        @b.element(css: '[data-text-013]').text.should == "Text 013"
        @b.element(css: '[data-text-014]').text.should == "Text 014"
        @b.element(css: '[data-text-015]').text.should == "Text 015"
        @b.element(css: '[data-text-016]').text.should == "Text 016"
        @b.element(css: '[data-text-017]').text.should == "Text 017"
        @b.element(css: '[data-text-018]').text.should == "Text 018"
        @b.element(css: '[data-text-019]').text.should == "Text 019"
        @b.element(css: '[data-text-020]').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark attribute - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute value" do
        start_time = Time.now
        @b.element(css: "[data-text='text001']").text.should == "Text 001"
        @b.element(css: "[data-text='text002']").text.should == "Text 002"
        @b.element(css: "[data-text='text003']").text.should == "Text 003"
        @b.element(css: "[data-text='text004']").text.should == "Text 004"
        @b.element(css: "[data-text='text005']").text.should == "Text 005"
        @b.element(css: "[data-text='text006']").text.should == "Text 006"
        @b.element(css: "[data-text='text007']").text.should == "Text 007"
        @b.element(css: "[data-text='text008']").text.should == "Text 008"
        @b.element(css: "[data-text='text009']").text.should == "Text 009"
        @b.element(css: "[data-text='text010']").text.should == "Text 010"
        @b.element(css: "[data-text='text011']").text.should == "Text 011"
        @b.element(css: "[data-text='text012']").text.should == "Text 012"
        @b.element(css: "[data-text='text013']").text.should == "Text 013"
        @b.element(css: "[data-text='text014']").text.should == "Text 014"
        @b.element(css: "[data-text='text015']").text.should == "Text 015"
        @b.element(css: "[data-text='text016']").text.should == "Text 016"
        @b.element(css: "[data-text='text017']").text.should == "Text 017"
        @b.element(css: "[data-text='text018']").text.should == "Text 018"
        @b.element(css: "[data-text='text019']").text.should == "Text 019"
        @b.element(css: "[data-text='text020']").text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Watirmark attribute value - #{finish_time}"
      end

    end
  end

  context "Webdriver" do
    let(:b) { Selenium::WebDriver.for :firefox }
    before(:each) do
      b.get TEST_ELEMENTS_URL
    end

    after(:each) do
      b.quit
    end

    15.times do
      it 'finds element by ID' do
        start_time = Time.now
        b.first(id: 'text_001').text.should == "Text 001"
        b.first(id: 'text_002').text.should == "Text 002"
        b.first(id: 'text_003').text.should == "Text 003"
        b.first(id: 'text_004').text.should == "Text 004"
        b.first(id: 'text_005').text.should == "Text 005"
        b.first(id: 'text_006').text.should == "Text 006"
        b.first(id: 'text_007').text.should == "Text 007"
        b.first(id: 'text_008').text.should == "Text 008"
        b.first(id: 'text_009').text.should == "Text 009"
        b.first(id: 'text_010').text.should == "Text 010"
        b.first(id: 'text_011').text.should == "Text 011"
        b.first(id: 'text_012').text.should == "Text 012"
        b.first(id: 'text_013').text.should == "Text 013"
        b.first(id: 'text_014').text.should == "Text 014"
        b.first(id: 'text_015').text.should == "Text 015"
        b.first(id: 'text_016').text.should == "Text 016"
        b.first(id: 'text_017').text.should == "Text 017"
        b.first(id: 'text_018').text.should == "Text 018"
        b.first(id: 'text_019').text.should == "Text 019"
        b.first(id: 'text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Webdriver ID - #{finish_time}"
      end
    end
    15.times do

      it 'finds element by CSS ID' do
        start_time = Time.now
        b.first(css: '#text_001').text.should == "Text 001"
        b.first(css: '#text_002').text.should == "Text 002"
        b.first(css: '#text_003').text.should == "Text 003"
        b.first(css: '#text_004').text.should == "Text 004"
        b.first(css: '#text_005').text.should == "Text 005"
        b.first(css: '#text_006').text.should == "Text 006"
        b.first(css: '#text_007').text.should == "Text 007"
        b.first(css: '#text_008').text.should == "Text 008"
        b.first(css: '#text_009').text.should == "Text 009"
        b.first(css: '#text_010').text.should == "Text 010"
        b.first(css: '#text_011').text.should == "Text 011"
        b.first(css: '#text_012').text.should == "Text 012"
        b.first(css: '#text_013').text.should == "Text 013"
        b.first(css: '#text_014').text.should == "Text 014"
        b.first(css: '#text_015').text.should == "Text 015"
        b.first(css: '#text_016').text.should == "Text 016"
        b.first(css: '#text_017').text.should == "Text 017"
        b.first(css: '#text_018').text.should == "Text 018"
        b.first(css: '#text_019').text.should == "Text 019"
        b.first(css: '#text_020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Webdriver CSS ID - #{finish_time}"
      end


    end
    15.times do
      it "finds element by class" do
        start_time = Time.now
        b.first(css: '.text-001').text.should == "Text 001"
        b.first(css: '.text-002').text.should == "Text 002"
        b.first(css: '.text-003').text.should == "Text 003"
        b.first(css: '.text-004').text.should == "Text 004"
        b.first(css: '.text-005').text.should == "Text 005"
        b.first(css: '.text-006').text.should == "Text 006"
        b.first(css: '.text-007').text.should == "Text 007"
        b.first(css: '.text-008').text.should == "Text 008"
        b.first(css: '.text-009').text.should == "Text 009"
        b.first(css: '.text-010').text.should == "Text 010"
        b.first(css: '.text-011').text.should == "Text 011"
        b.first(css: '.text-012').text.should == "Text 012"
        b.first(css: '.text-013').text.should == "Text 013"
        b.first(css: '.text-014').text.should == "Text 014"
        b.first(css: '.text-015').text.should == "Text 015"
        b.first(css: '.text-016').text.should == "Text 016"
        b.first(css: '.text-017').text.should == "Text 017"
        b.first(css: '.text-018').text.should == "Text 018"
        b.first(css: '.text-019').text.should == "Text 019"
        b.first(css: '.text-020').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Webdriver Class - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute" do
        start_time = Time.now
        b.first(css: '[data-text-001]').text.should == "Text 001"
        b.first(css: '[data-text-002]').text.should == "Text 002"
        b.first(css: '[data-text-003]').text.should == "Text 003"
        b.first(css: '[data-text-004]').text.should == "Text 004"
        b.first(css: '[data-text-005]').text.should == "Text 005"
        b.first(css: '[data-text-006]').text.should == "Text 006"
        b.first(css: '[data-text-007]').text.should == "Text 007"
        b.first(css: '[data-text-008]').text.should == "Text 008"
        b.first(css: '[data-text-009]').text.should == "Text 009"
        b.first(css: '[data-text-010]').text.should == "Text 010"
        b.first(css: '[data-text-011]').text.should == "Text 011"
        b.first(css: '[data-text-012]').text.should == "Text 012"
        b.first(css: '[data-text-013]').text.should == "Text 013"
        b.first(css: '[data-text-014]').text.should == "Text 014"
        b.first(css: '[data-text-015]').text.should == "Text 015"
        b.first(css: '[data-text-016]').text.should == "Text 016"
        b.first(css: '[data-text-017]').text.should == "Text 017"
        b.first(css: '[data-text-018]').text.should == "Text 018"
        b.first(css: '[data-text-019]').text.should == "Text 019"
        b.first(css: '[data-text-020]').text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Webdriver attribute - #{finish_time}"
      end

    end
    15.times do
      it "finds element by attribute value" do
        start_time = Time.now
        b.first(css: "[data-text='text001']").text.should == "Text 001"
        b.first(css: "[data-text='text002']").text.should == "Text 002"
        b.first(css: "[data-text='text003']").text.should == "Text 003"
        b.first(css: "[data-text='text004']").text.should == "Text 004"
        b.first(css: "[data-text='text005']").text.should == "Text 005"
        b.first(css: "[data-text='text006']").text.should == "Text 006"
        b.first(css: "[data-text='text007']").text.should == "Text 007"
        b.first(css: "[data-text='text008']").text.should == "Text 008"
        b.first(css: "[data-text='text009']").text.should == "Text 009"
        b.first(css: "[data-text='text010']").text.should == "Text 010"
        b.first(css: "[data-text='text011']").text.should == "Text 011"
        b.first(css: "[data-text='text012']").text.should == "Text 012"
        b.first(css: "[data-text='text013']").text.should == "Text 013"
        b.first(css: "[data-text='text014']").text.should == "Text 014"
        b.first(css: "[data-text='text015']").text.should == "Text 015"
        b.first(css: "[data-text='text016']").text.should == "Text 016"
        b.first(css: "[data-text='text017']").text.should == "Text 017"
        b.first(css: "[data-text='text018']").text.should == "Text 018"
        b.first(css: "[data-text='text019']").text.should == "Text 019"
        b.first(css: "[data-text='text020']").text.should == "Text 020"
        finish_time = Time.now - start_time
        puts "Webdriver attribute value - #{finish_time}"
      end

    end
  end


end
