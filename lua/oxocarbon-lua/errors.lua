local Errors = {}

Errors.issue_oxocarbon_error = function(content)
  vim.notify_once(
    content,
    vim.log.levels.ERROR,
    {
      title = 'oxocarbon-lua.nvim',
    }
  )
end

return Errors
