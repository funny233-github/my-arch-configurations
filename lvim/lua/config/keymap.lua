lvim.builtin.which_key.mappings["r"] = {
  name = "Rust",
  r = { ":Crun<Enter>", "Run" },
  f = { ":RustFmt<Enter>", "Format" },
  t = { ":Ctest<Enter>", "Test" },
  b = { ":Cbench<Enter>", "Bench" },
  c = { ":Ccheck<Enter>", "Check" },
  C = { ":!cargo clippy<Enter>", "Clippy Check" },
  d = { ":Cdoc<Enter>", "Doc" },
}

lvim.builtin.which_key.mappings["a"] = {
  name = "AI",
  c = { ":Gen Chat<Enter>", "Chat" },
  a = { ":Gen Ask<Enter>", "Ask" },
}

lvim.builtin.which_key.mappings["t"] = {
  ":Format<Enter>",
  "Code Format"
}
