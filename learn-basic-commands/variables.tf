variable "filename" {
  type        = string
  description = "Contains the filename"
  default     = "test-file"
}

variable "filenames" {
  type        = list(string)
  description = "Contains the list of file names to be created"
  default     = ["file-1", "file-2", "file-3"]
}

variable "messages" {
  type        = list(string)
  description = "Contains the list of messages to be added"
  default     = ["message-1", "message-2", "message-3"]
}

variable "message" {
  type        = string
  description = "Contains the message"
  default     = "Hello World!"
}

variable "path" {
  type        = string
  description = "Contains the path"
  default     = "/Users/sanjaybhide/Desktop/development/learn-terraform/learn-basic-commands"
}