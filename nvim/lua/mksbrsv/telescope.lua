M = {}
M.search_dotfiles = function()
    require('telescope.builtin').find_files({
        prompt_title = 'Neovim Config',
        cwd = vim.env.DOTFILES,
        hidden = true,
    })
end

return M
