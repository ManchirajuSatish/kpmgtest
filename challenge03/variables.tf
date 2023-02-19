variable "nested_objects" {
  type = map(map(map(string)))

default = {
  "key1" = {
    "key2" = {
      "key3" = "Satish"
    }
  }
}

}
