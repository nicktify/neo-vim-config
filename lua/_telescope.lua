local telescope = require("telescope")

telescope.setup {
  pickers = {
    find_files = {
      --theme = "dropdown",
    },
    git_files = {
      --theme = "dropdown",
    }
  },
  defaults = {
   file_ignore_patterns = {
     --"node_modules/", "build/", "dist/", "yarn.lock"
   },
  },
}

-- telescope.load_extension("git_worktree")

