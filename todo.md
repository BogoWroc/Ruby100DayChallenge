OpenStruct
---
Familiarize with it

Generate documentation
---
https://rubyreferences.github.io/rubyref/developing/documenting.html

Use RDoc or YARD

Mock Display
---
https://semaphoreci.com/community/tutorials/mocking-in-ruby-with-minitest
https://mocha.jamesmead.org/

RSpec
---
TODO

Parse web page
---

https://www.npr.org/2022/11/07/1134896809/countdown-the-top-10-songs-of-2022

Display only song titles at the console.

Mixins
---
In Ruby, classes are never closed: you can always add methods to an existing class. This applies to the classes you write as well as the standard, built-in classes. All you have to do is open up a class definition for an existing class, and the new contents you specify will be added to whatever's there.

Method missing
---
Handle missing methods: get_x, get_y, get_z from the objects with variables x, y, z

Subclasses
----
https://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html
class Song
def initialize(name, artist, duration)

class KaraokeSong < Song
def initialize(name, artist, duration, lyrics)

Virtual attributes
---
https://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html

Class methods
---
class Example

def instMeth              # instance method
end

def Example.classMeth     # class method
end

end

Singletons and Other Constructors
---

class Logger
private_class_method :new
@@logger = nil
def Logger.create
@@logger = new unless @@logger
@@logger
end
end

Specifying Access Control
---
public, protected, private
