defmodule GettextPractice do
  import GettextPractice.Gettext

  def gettexts do
    # Simple translation
    # => result: "번역할 문자열"
    gettext("번역할 문자열")
    |> IO.inspect()

    # Plural translation
    ngettext(
      "세 번째 인수가 1인 경우 이 문자열을 번역함",
      "세 번째 인수가 1이 아닌 경우 이 문자열을 번역함",
      1
    )
    |> IO.inspect()

    # => result: "세 번째 인수가 1이 아닌 경우 이 문자열을 번역함"
    ngettext(
      "세 번째 인수가 1인 경우 이 문자열을 번역함",
      "세 번째 인수가 1이 아닌 경우 이 문자열을 번역함",
      2
    )
    |> IO.inspect()

    ngettext(
      "세 번째 인수가 1인 경우 이 문자열을 번역함",
      "세 번째 인수가 0인 경우에는 이 문자열을 번역함",
      0
    )
    |> IO.inspect()

    # Domain-based translation
    # 첫 번째 인수에 들어온 값과 동일한 이름을 가진 PO 파일 내용으로 번역됨
    dgettext("errors", "번역할 에러 메시지")
    |> IO.inspect()

    # Context-based translation
    pgettext("email", "번역할 문자열")
    |> IO.inspect()

    # All of the above
    dpngettext(
      "errors",
      "context",
      "세 번째 인수가 1인 경우 이 문자열을 번역함",
      "세 번째 인수가 1이 아닌 경우 이 문자열을 번역함",
      2
    )
    |> IO.inspect()
  end
end
