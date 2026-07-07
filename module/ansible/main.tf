terraform {
  required_providers {
    ansible = {
      source = "ansible/ansible"
    }
  }
}
resource "ansible_playbook" "HelloWorld" {
    playbook = "${path.module}/playbooks/HelloWorld.yml"
    name = "Hello World!"
    replayable = true
}