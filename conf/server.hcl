data_dir  = "/tmp/nomad"
log_level = "debug"

bind_addr = "0.0.0.0"

ports {
  http = 4646
  rpc  = 4647
  serf = 4648
}

server {
  enabled          = true
  bootstrap_expect = 1

  server_join {
    retry_join = [ "127.0.0.1" ]
  }
}

#client {
#  enabled = true
#  options {
#    "driver.raw_exec.enable" = "true"
#  }
#}
