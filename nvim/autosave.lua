-- Define the AutoSave function
function AutoSave()

    vim.cmd([[silent! wall]])

end

local M = {}
function M.setup()
-- Autosave on CursorHold and InsertLeave events
vim.cmd([[
            autocmd CursorHold,CursorHoldI * lua AutoSave()
          ]])
vim.cmd([[
            autocmd InsertLeave * lua AutoSave()
          ]])
end
return M
