module SpeedTests
  class Results

    def average_by_id(value= 'text_1', repeat=30)
      @array = []
      @array.reduce(:+).to_f / @array.size
    end

    def execute(how, what, repeat=300)
      repeat.times do
        start_time = Time.now
        Page.browser.a(how, what).send :locate
        send("#{how}_watir=", Time.now - start_time)

        start_time = Time.now
        Page.browser.driver.first(how, what)
        send("#{how}_wd=", Time.now - start_time)

        start_time = Time.now
        Page.browser.a(how, /#{what}/).send :locate
        send("#{how}_regex=", Time.now - start_time)

      end
    end


    def initialize
      FINDERS.each do |how|

        instance_variable_set("@#{how}_wd", [])
        instance_variable_set("@#{how}_watir", [])
        instance_variable_set("@#{how}_regex", [])
      end
    end

    WD_FINDERS = [:class,
                  :class_name,
                  :css,
                  :id,
                  :link,
                  :link_text,
                  :name,
                  :partial_link_text,
                  :tag_name,
                  :xpath]

    WATIR_FINDERS = [:href]

    FINDERS = WD_FINDERS + WATIR_FINDERS
    #FINDERS_REGEX =  WD_FINDERS.collect {|x| x + "_regex"} + WATIR_FINDERS.collect {|x| x + "_regex"}

    WILDCARD_ATTRIBUTE = /^(aria|data)_(.+)$/


    FINDERS.each do |how|

      define_method("#{how}_avg") do
        eval("@#{how}_watir").mean
      end

      define_method("#{how}_avg") do
        eval("@#{how}_watir").mean
      end

      define_method("#{how}_wd_watir") do
        watir = eval("#{how}_avg")
        wd = eval("@#{how}_wd").mean
        wd == 0 ? 0 : 100 * (watir - wd) / wd
      end

      define_method("#{how}_watir_regex") do
        watir = eval("#{how}_avg")
        regex = eval("@#{how}_regex").mean
        watir == 0 ? 0 : 100 * (regex - watir) / watir
      end

      define_method("#{how}_stdev") do
        eval("@#{how}_wd").standard_deviation.to_s + ", " +
            eval("@#{how}_watir").standard_deviation.to_s + ", " +
            eval("@#{how}_regex").standard_deviation.to_s
      end


      attr_reader "#{how}_wd", "#{how}_watir", "#{how}_regex"


      define_method("#{how}_wd=") do |value|
        eval("@#{how}_wd") << value
      end

      define_method("#{how}_watir=") do |value|
        eval("@#{how}_watir") << value
      end

      define_method("#{how}_regex=") do |value|
        eval("@#{how}_regex") << value
      end
    end

    def to_s
      FINDERS.each_with_object(String.new) do |locator, s|
        s << "#{locator} takes #{eval("#{locator}_avg")}ms; #{eval("#{locator}_wd_watir")}% longer in Watir; " +
        "Regex adds additional #{eval("#{locator}_watir_regex")}% -- Stdevs: #{eval("#{locator}_stdev")}\n"
      end
    end

  end
end