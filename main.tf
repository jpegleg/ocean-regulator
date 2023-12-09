resource "vultr_instance" "west-main" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 1743
}

resource "vultr_instance" "west-second" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 1743
}

resource "vultr_instance" "west-third" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 1743
}

resource "vultr_instance" "east-main" {
    plan = "vc2-1c-1gb"
    region = "ewr"
    os_id = 1743
}

resource "vultr_instance" "east-second" {
    plan = "vc2-1c-1gb"
    region = "ewr"
    os_id = 1743
}

resource "vultr_instance" "east-third" {
    plan = "vc2-1c-1gb"
    region = "ewr"
    os_id = 1743
}
