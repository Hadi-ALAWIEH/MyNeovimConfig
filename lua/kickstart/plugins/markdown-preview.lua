return {
  'iamcco/markdown-preview.nvim',
  ft = { 'markdown' },
  build = 'cd app && yarn install',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  init = function()
    local g = vim.g
    g.mkdp_auto_start = 0
    g.mkdp_auto_close = 1
    g.mkdp_refresh_slow = 0
    g.mkdp_command_for_global = 0
    g.mkdp_open_to_the_world = 0
    g.mkdp_open_ip = ''
    g.mkdp_browser = 'chrome'
    g.mkdp_echo_preview_url = 0
    g.mkdp_browserfunc = ''
    g.mkdp_theme = 'dark'
    g.mkdp_filetypes = { 'markdown' }
    g.mkdp_page_title = '${name}.md'
    g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      maid = {},
      sync_scroll_type = 'middle',
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = false,
      toc = {},
      disable_sync_scroll = 0,
      disable_filename = 1,
    }
  end,
}
