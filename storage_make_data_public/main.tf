resource "google_storage_bucket" "default" {
    name = "example-bucket-name"
    location = "US"
    uniform_bucket_level_access = true
}

# [START storage_make_data_public]
# Make bucket public
resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.default.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
# [END storage_make_data_public]
