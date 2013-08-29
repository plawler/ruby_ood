module SomeFramework
  class Foo

    attr_reader :one, :two, :three

    def initialize(one, two, three)
      @one = one
      @two = two
      @three = three
    end

    def show
      puts "#{one} #{two} #{three}"
    end
  end

end

module FooFactory

  def self.foo(args)
    SomeFramework::Foo.new(args[:one], args[:two], args[:three])
  end

end

FooFactory.foo(:one => "one", :two => "two", :three => "three").show