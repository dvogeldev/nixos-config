{ config, lib, ... }:
{
  age.identityPaths = [
    "/home/david/.config/age/keys.txt"
    "/etc/age/keys.txt"
  ];

  age.secrets = {
    canlock = {
      file = ../secrets/canlock.age;
      owner = "david";
      mode = "400";
    };
    gnus-name = {
      file = ../secrets/gnus-name.age;
      owner = "david";
      mode = "400";
    };
    gnus-email = {
      file = ../secrets/gnus-email.age;
      owner = "david";
      mode = "400";
    };
    miniflux-admin = {
      file = ../secrets/miniflux-admin.age;
      owner = "miniflux";
      group = "miniflux";
      mode = "0600";
    };
  };
}
