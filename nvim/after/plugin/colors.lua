require('min-theme').setup({
    transparent = true,
})

function ColorNvim(color)
    color = color or 'min-theme'
    vim.cmd.colorscheme(color)
end

require('lualine').setup{
    options = {
        icons_enabled = true,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
};

ColorNvim()

