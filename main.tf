// Configure the Google Cloud provider
provider "google" {
	credentials = "${file("${var.credentials}")}"
	project     = "jmehler-pipeline"
	region		= "us-west1"
}

// Create the Cloud Build triggers
resource "google_cloudbuild_trigger" "build_trigger" {
  project  = "jmehler-pipeline"
  trigger_template {
    branch_name = "master"
    project     = "jmehler-pipeline"
    repo_name   = "infra-repo"
  }
  filename = "cloudbuild.yaml"
}