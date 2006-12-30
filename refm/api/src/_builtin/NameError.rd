#@since 1.9.0
= class NameError < StandardError
#@else
= class NameError < ScriptError
#@end

未定義のローカル変数や定数を使用したときに発生します。

== Class Methods

#@since 1.8.0
--- new(error_message[, name])

例外オブジェクトを生成して返します。nameは未定義だったシンボルです。

例:

  err = NameError.new("message", "foo")
  p err       # => #<NameError: message>
  p err.name  # => "foo"
#@end

== Instance Methods

--- name

この例外オブジェクトを発生させる原因となった
変数や定数、メソッドの名前をシンボルで返します。

例:

  begin
    foobar
  rescue NameError => err
    p err       # => #<NameError: undefined local variable or method `foobar' for main:Object>
    p err.name  # => :foobar
  end

#@since 1.8.1
--- to_s

例外オブジェクトを文字列に変換して返します。
#@end
