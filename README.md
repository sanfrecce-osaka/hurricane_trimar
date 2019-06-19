# HurricaneTrimar

This gem adds methods for trimming spaces to `String`, using `[:space:]` POSIX character class.
Trimmed spaces by this gem are below.

|Character|Name|
|---|---|
|U+0009|Character tabulation|
|U+000A|Line feed|
|U+000B|Vertical tabulation|
|U+000C|Form feed|
|U+000D|Carriage return|
|U+0020|Space|
|U+00A0|No-break space|
|U+0085|Next line|
|U+1680|Ogham space mark|
|U+2000|En quad|
|U+2001|Em quad|
|U+2002|En space|
|U+2003|Em space|
|U+2004|Three-per-em space|
|U+2005|Four-per-em space|
|U+2006|Six-per-em space|
|U+2007|Figure space|
|U+2008|Punctuation space|
|U+2009|Thin space|
|U+200A|Hair space|
|U+202F|Narrow no-break space|
|U+205F|Medium mathematical space|
|U+2028|Line separator|
|U+2029|Paragraph separator|
|U+3000|Ideographic space|
    
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
\u3000\u0020
STR
# => "Hello World\n\u3000\u0020\n"

<<STR.rtrim
\u0020\u3000
\u0020\u3000Hello World\u0020\u3000
\u3000\u0020
STR
# => "\u0020\u3000\nHello World" 
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sanfrecce-osaka/hurricane_trimar.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
