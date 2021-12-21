resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.content
}

data "local_file" "exemplo-data" {
  filename = resource.local_file.exemplo.filename
}

output "data_output" {
    value = data.local_file.exemplo-data.content_base64
}

variable "content" {
    type = string
}

output "file_id" {
    value = resource.local_file.exemplo.id
}

output "content" {
    value = var.content
}

output "chiken-egg" {
    value = sort(["chiken", "egg"])
}