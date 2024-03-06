-- Settings for
-- img-clip.nvim
--
-- [Resources]
-- - https://github.com/HakonHarnes/img-clip.nvim

-- Set up block.lua
local img_clip = require'img-clip'

--- plugin setup
img_clip.setup({
  default = {
    debug = false, -- enable debug mode
    dir_path = "assets", -- directory path to save images to, can be relative (cwd or current file) or absolute
    file_name = "%Y-%m-%d-%H-%M-%S", -- file name format (see lua.org/pil/22.1.html)
    url_encode_path = false, -- encode spaces and special characters in file path
    use_absolute_path = false, -- expands dir_path to an absolute path
    relative_to_current_file = false, -- make dir_path relative to current file rather than the cwd
    prompt_for_file_name = true, -- ask user for file name before saving, leave empty to use default
    show_dir_path_in_prompt = false, -- show dir_path in prompt when prompting for file name
    use_cursor_in_template = true, -- jump to cursor position in template after pasting
    insert_mode_after_paste = true, -- enter insert mode after pasting the markup code
    embed_image_as_base64 = false, -- paste image as base64 string instead of saving to file
    max_base64_size = 10, -- max size of base64 string in KB
    template = "$FILE_PATH", -- default template

    drag_and_drop = {
      enabled = true, -- enable drag and drop mode
      insert_mode = false, -- enable drag and drop in insert mode
      copy_images = false, -- copy images instead of using the original file
      download_images = true, -- download images and save them to dir_path instead of using the URL
    },
  },

  -- file-type specific options
  -- any options that are passed here will override the default config
  -- for instance, setting use_absolute_path = true for markdown will
  -- only enable that for this particular file type
  -- the key (e.g. "markdown") is the filetype (output of "set filetype?")

  markdown = {
    url_encode_path = true,
    template = "![$CURSOR]($FILE_PATH)",

    drag_and_drop = {
      download_images = false,
    },
  },

  html = {
    template = '<img src="$FILE_PATH" alt="$CURSOR">',
  },

  tex = {
    template = [[
\begin{figure}[h]
  \centering
  \includegraphics[width=0.8\textwidth]{$FILE_PATH}
  \caption{$CURSOR}
  \label{fig:$LABEL}
\end{figure}
    ]],
  },

  typst = {
    template = [[
#figure(
  image("$FILE_PATH", width: 80%),
  caption: [$CURSOR],
) <fig-$LABEL>
    ]],
  },

  rst = {
    template = [[
.. image:: $FILE_PATH
   :alt: $CURSOR
   :width: 80%
    ]],
  },

  asciidoc = {
    template = 'image::$FILE_PATH[width=80%, alt="$CURSOR"]',
  },

  org = {
    template = [=[
#+BEGIN_FIGURE
[[file:$FILE_PATH]]
#+CAPTION: $CURSOR
#+NAME: fig:$LABEL
#+END_FIGURE
    ]=],
  },
})

-- Set settings for pasted image
img_clip.pasteImage({
    use_absolute_path = false,
    file_name = "image.png"
})

