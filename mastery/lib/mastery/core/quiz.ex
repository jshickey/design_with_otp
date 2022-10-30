defmodule Mastery.Core.Quiz do
  @moduledoc false

  defstruct title: nil,
            master: 3,
            templates: %{},
            used: [],
            current_question: nil,
            last_response: nil,
            record: %{ },
            mastered: [ ]
end
