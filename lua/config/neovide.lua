if vim.g.neovide then
  vim.print("Hello from neovide")

  -- Font
  vim.o.guifont = "GoMono Nerd Font:h15"
  vim.api.nvim_set_keymap("n", "<leader><C-f>+", ":lua ChangeFontSize(1)<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<leader><C-f>-", ":lua ChangeFontSize(-1)<CR>", { noremap = true, silent = true })

  vim.cmd([[
      command! CheckFont echo &guifont
  ]])

  function ChangeFontSize(delta)
    local font = vim.o.guifont
    local parts = vim.split(font, ":h")
    local current_size = tonumber(parts[2])
    local new_size = current_size + delta
    if new_size > 0 then
      vim.o.guifont = parts[1] .. ":h" .. new_size
    end
    vim.print(string.format("New font size %d", new_size))
  end
end
