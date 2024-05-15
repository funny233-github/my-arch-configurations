-- Custom Parameters (with defaults)
return {
  "ShangjinTang/codellama.nvim",
  opts = {
    model = "codellama",        -- The default model to use.
    display_mode = "split",     -- The display mode. Can be "float" or "split".
    show_prompt = true,         -- Shows the Prompt submitted to Ollama.
    show_model = true,          -- Displays which model you are using at the beginning of your chat session.
    no_auto_close = false,      -- Never closes the window automatically.
    init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
    -- Function to initialize Ollama
    command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
    -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
    -- This can also be a lua function returning a command string, with options as the input parameter.
    -- The executed command must return a JSON object with { response, context }
    -- (context property is optional).
    list_models = '<omitted lua function>',     -- Retrieves a list of model names
    debug = false                               -- Prints errors and the command which is run.
  }
}

-- Custom Parameters (with defaults)
-- return {
--     "David-Kunz/gen.nvim",
--     opts = {
--         model = "llama3:8b", -- The default model to use.
--         host = "localhost", -- The host running the Ollama service.
--         port = "11434", -- The port on which the Ollama service is listening.
--         quit_map = "q", -- set keymap for close the response window
--         retry_map = "<c-r>", -- set keymap to re-send the current prompt
--         init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
--         -- Function to initialize Ollama
--         command = function(options)
--             local body = {model = options.model, stream = true}
--             return "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body"
--         end,
--         -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
--         -- This can also be a command string.
--         -- The executed command must return a JSON object with { response, context }
--         -- (context property is optional).
--         -- list_models = '<omitted lua function>', -- Retrieves a list of model names
--         display_mode = "float", -- The display mode. Can be "float" or "split".
--         show_prompt = true, -- Shows the prompt submitted to Ollama.
--         show_model = true, -- Displays which model you are using at the beginning of your chat session.
--         no_auto_close = false, -- Never closes the window automatically.
--         debug = false -- Prints errors and the command which is run.
--     }
-- }
