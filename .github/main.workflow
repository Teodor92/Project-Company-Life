workflow "Documents workflow" {
  resolves = ["Lint markdown documents"]
  on = "push"
}

action "Lint markdown documents" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  args = "lint:markdown"
}
