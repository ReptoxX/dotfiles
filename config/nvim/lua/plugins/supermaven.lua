return {
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                -- your config here
                log_level = "warn",
            })
        end,
    },
}
