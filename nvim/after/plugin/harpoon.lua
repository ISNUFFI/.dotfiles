local harpoon = require("harpoon")
local extensions = require("harpoon.extensions")

-- REQUIRED
harpoon:setup({
    --cmd list for project-specific commands execution
    cmd = {
        select = function(list_item, list, option)
            vim.cmd(list_item.value)
        end
    }
})
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- cmd key bindings
vim.keymap.set("n", "<C-[>", function() harpoon.ui:toggle_quick_menu(harpoon:list("cmd")) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list("cmd"):select(1) end)
vim.keymap.set("n", "<C-m>", function() harpoon:list("cmd"):select(2) end)
