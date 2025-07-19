return {
  "Vonr/align.nvim",
  branch="v2",
  event ="VeryLazy",
  init = function ()
    local NS = { noremap = true, silent = true }
    vim.keymap.set('v', 'aa', function() require'align'.align_to_char()              end, NS) 
    vim.keymap.set(
      'v', 'as',
      function()
        require'align'.align_to_string({
          preview=true,
          regex=false,
        })
      end,
      NS
    ) 
  end
}
