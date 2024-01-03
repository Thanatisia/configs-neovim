-- Settings for
-- LuaSnip
--
-- [Resources]
-- - https://github.com/L3MON4D3/LuaSnip
--
-- [Documentations]
-- - nvim-cmp Wiki: https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

--- Dependencies check
luasnip = require("luasnip")
if not luasnip then
    return
end

-- some shorthands...
local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

-- Set LuaSnip Config
luasnip.config.set_config({
    -- Enable autotriggered snippets
    enable_autosnippets = true,
    -- Use Tab (or some other key if you prefer) to trigger visual selection
    store_selection_keys = "<Tab>",
})

-- Add Snippets
luasnip.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
        snip({
            trig = "meta",
            namr = "Metadata",
            dscr = "Yaml metadata format for markdown"
        }, {
            text({"---",
            "title: "}), insert(1, "note_title"), text({"",
            "author: "}), insert(2, "author"), text({"",
            "date: "}), func(date, {}), text({"",
            "categories: ["}), insert(3, ""), text({"]",
            "lastmod: "}), func(date, {}), text({"",
            "tags: ["}), insert(4), text({"]",
            "comments: true",
            "---", ""}),
            insert(0)
        }),
        snip({
          trig = "link",
          namr = "markdown_link",
          dscr = "Create markdown link [txt](url)"
        }, {
          text('['),
          insert(1),
          text(']('),
          func(function(_, snip)
            return snip.env.TM_SELECTED_TEXT[1] or {}
          end, {}),
          text(')'),
          insert(0),
        }),
    },
})

