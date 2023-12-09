resource "vultr_ssh_key" "enre" {
  name = "enre"
  ssh_key = "SSH_PUBLIC_KEY_REPLACEME"
}

resource "vultr_instance" "west-main" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 1743
    ssh_key_ids = ["${vultr_ssh_key.enre.id}"]
}

resource "vultr_instance" "west-second" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 1743
    ssh_key_ids = ["${vultr_ssh_key.enre.id}"]
}

resource "vultr_instance" "east-main" {
    plan = "vc2-1c-1gb"
    region = "ewr"
    os_id = 1743
    ssh_key_ids = ["${vultr_ssh_key.enre.id}"]
}

resource "vultr_instance" "east-second" {
    plan = "vc2-1c-1gb"
    region = "ewr"
    os_id = 1743
    ssh_key_ids = ["${vultr_ssh_key.enre.id}"]
}
