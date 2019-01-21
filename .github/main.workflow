workflow "Documentation Generation Workflow" {
	  on = "push"
	    resolves = ["Generate Net Documentation"]
}

action "Generate Net Documentation" {
	uses = "./actions/docbuild"
}

action "Upload to release" {
  uses = "JasonEtco/upload-to-release@master"
  args = "preamble.pdf application/pdf"
  secrets = ["GITHUB_TOKEN"]
  needs = ["Generate Net Documentation"]
}
