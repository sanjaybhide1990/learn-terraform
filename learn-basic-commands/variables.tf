variable "filename" {
  type        = string
  description = "Contains the filename"
  default     = "test-file"
}

variable "filenames-using-count" {
  type        = list(string)
  description = "Contains the list of file names to be created"
  default     = ["file-1", "file-2", "file-3"]
}

variable "filenames-using-foreach" {
  type = set(string)
  description = "Contains the set of file names to be created using for-each"
  default = [ "file-creatting-using-foreach-1","file-creatting-using-foreach-2","file-creatting-using-foreach-3" ]
}

variable "message" {
  type        = string
  description = "Contains the message"
  default     = "Hello World!"
}