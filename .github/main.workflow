workflow "Documentation Generation Workflow" {
	  on = "push"
	    resolves = ["Generate Net Documentation"]
}

action "Generate Net Documentation" {
	uses = "./actions/docbuild"
}
