vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    options = {
        '-pdf',                    -- build PDF
        '-interaction=nonstopmode',-- non-stop on errors
        '-synctex=1',              -- synctex support
    },
}

