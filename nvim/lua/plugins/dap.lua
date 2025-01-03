return {
  "rcarriga/nvim-dap-ui",
  dependencies = { 
    {
      "mfussenegger/nvim-dap",
      config = function(self, opts)
        local dap = require("dap")

        dap.configurations.scala = {
          {
            type = "scala",
            request = "launch",
            name = "RunOrTest",
            metals = {
              runType = "runOrTestFile",
            },
          },
          {
            type = "scala",
            request = "launch",
            name = "Test Target",
            metals = {
              runType = "testTarget",
            },
          },
        }
      end
    },
    "nvim-neotest/nvim-nio"
  }
}
