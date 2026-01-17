resource "local_file" "hello_world" {
#   filename = "${var.path}/${var.filename}"
filename = "${var.filename}"
  content = "Message: ${var.message}"
}

output "created-filename" {
  description = "Displays the name of the created file"
  value = local_file.hello_world.filename
}

output "message-added" {
  description = "Displays the message added to the file"
  value = local_file.hello_world.content
}