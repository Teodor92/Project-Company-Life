workflow "Documents workflow" {
  resolves = ["Lint markdown documents"]
  on = "push"
}

action "Build" {
  uses = "actions/npm@master"
  args = "install"
}

action "Lint markdown documents" {
  uses = "actions/npm@master"
  args = "run lint:markdown"
}
