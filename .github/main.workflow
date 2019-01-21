workflow "Documentation Generation Workflow" {
	  on = "push"
	    resolves = ["Generate Net Documentation"]
}

action "DocFX - Generate TypeScript Documentation" {
	uses = "./actions/docbuild"
}
