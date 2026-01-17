resource "local_file" "hello_world" {
  filename = var.filename
  content  = "Message: ${var.message}"
}

resource "local_file" "file_created_using_count" {
    filename = var.filenames[count.index]
    count = length(var.filenames)
    content = "Message: File is created using count meta argument"
}

output "created-filename" {
  description = "Displays the name of the created file"
  value       = local_file.hello_world.filename
}

output "message-added" {
  description = "Displays the message added to the file"
  value       = local_file.hello_world.content
}