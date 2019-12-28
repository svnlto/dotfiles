inspect_limit = 5_000
history_size = 100

Application.put_env(:elixir, :ansi_enabled, true)

IEx.configure(
  colors: [
    pretty: true,
    syntax_colors: [
      atom: :light_cyan,
      string: :light_green,
      number: :light_blue,
      nil: :light_magenta,
      list: :light_white,
      tuple: :light_white,
      map: :light_white,
      keyword_list: :light_white,
      keyword: :default_color,
      boolean: :light_magenta,
      binary: :light_yellow,
      hash_set: :light_white,
      hash_dict: :light_white,
      regex: :light_red,
      struct: :light_white
    ],
    ls_directory: :cyan,
    ls_device: :yellow,
    doc_headings: [:blue, :bright, :underline],
    doc_title: [:blue, :bright, :underline],
    doc_code: :green,
    doc_inline_code: :blue,
    eval_result: [:cyan, :bright],
    eval_error: [[:red, :bright, "\n▶▶▶\n"]],
    eval_info: [:yellow, :bright ],
  ],
  inspect: [pretty: true, limit: inspect_limit],
  history_size: history_size,
  default_prompt: [
    "\e[G", # cursor ⇒ column 1
    :blue, "%prefix", :yellow, "|", :blue, "%counter", " ", :yellow, "▶", :reset
  ] |> IO.ANSI.format |> IO.chardata_to_string
)
