settings {
  nodaemon=true,
  statusInterval=1,
}

sync {
  default.rsync,
  excludeFrom="/etc/lsyncd.exclude",
  delete=true,
  source="/src",
  target="/var/www/html",
  rsync={
    archive=true,
    verbose=true,
  },
}
