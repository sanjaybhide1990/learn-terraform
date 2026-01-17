resource "local_file" "hello_world" {
  filename = var.filename
  content  = "Message: ${var.message}"
}

resource "local_file" "file_created_using_count" {
    filename = var.filenames-using-count[count.index]
    count = length(var.filenames-using-count)
    content = "Message: File is created using count meta argument"
}

resource "local_file" "file_created_using_foreach" {
  filename = each.value
  for_each = var.filenames-using-foreach
  content = "Message: File is created using for-each argument"
}

output "files_created_using_loops" {
  value = local_file.file_created_using_foreach
  sensitive = true
}

output "created-filename" {
  description = "Displays the name of the created file"
  value       = local_file.hello_world.filename
}

output "message-added" {
  description = "Displays the message added to the file"
  value       = local_file.hello_world.content
}