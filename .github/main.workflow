workflow "Documentation Generation Workflow" {
	  on = "push"
	    resolves = ["Generate Net Documentation"]
}

action "Generate Net Documentation" {
	uses = "./actions/docbuild"
}

workflow "Package" {
  on = "release"
  resolves = ["Upload to release"]
}

action "Upload to release" {
  uses = "JasonEtco/upload-to-release@master"
  args = "preamble.pdf"
  secrets = ["GITHUB_TOKEN"]
  needs = ["Generate Net Documentation"]
}
