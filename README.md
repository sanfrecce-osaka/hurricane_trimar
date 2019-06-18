# HurricaneTrimar

This gem adds methods for trimming spaces to `String`.
This gem trims spaces using `[:space:]` of POSIX character class.
So trimmed spaces by this gem are below.

|Character|
|---|
|U+0009|
|U+000A|
|U+000B|
|U+000C|
|U+000D|
|U+0020|
|U+00A0|
|U+0085|
|U+1680|
|U+2000|
|U+2001|
|U+2002|
|U+2003|
|U+2004|
|U+2005|
|U+2006|
|U+2007|
|U+2008|
|U+2009|
|U+200A|
|U+202F|
|U+205F|
|U+2028|
|U+2029|
|U+3000|
    
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hurricane_trimar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hurricane_trimar

## Usage

```ruby
<<STR.trim
\u0020\u3000
\u0020\u3000Hello World\u0020\u3000
\u3000\u0020
STR
# => "Hello World"

<<STR.ltrim
\u0020\u3000
\u0020\u3000Hello World\u0020\u3000
\u3000\u0020"
STR
# => "Hello World\n\u3000\u0020\n"

<<STR.rtrim
\u0020\u3000
\u0020\u3000Hello World\u0020\u3000
\u3000\u0020"
STR
# => "\u0020\u3000\nHello World" 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sanfrecce-osaka/hurricane_trimar.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
