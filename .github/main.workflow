workflow "Documentation Generation Workflow" {
	  on = "push"
	    resolves = ["Generate Net Documentation"]
}
