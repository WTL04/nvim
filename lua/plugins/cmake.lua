return {
  {
    "Civitasv/cmake-tools.nvim",
    ft = { "cmake", "cpp", "c", "cuda" }, -- load only for these filetypes
    opts = {
      cmake_command = "cmake", -- path to cmake
      cmake_build_directory = "build",
      cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
      cmake_build_options = {},
      cmake_build_type = "Debug",
      cmake_console_size = 10,
      cmake_console_position = "belowright",
    },
  },
}
