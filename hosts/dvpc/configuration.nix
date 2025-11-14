{
  config,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    # ./hardware-overrides.nix
    ../../profiles/workstation.nix
    ../../modules/secrets.nix
  ];

  # Host-specific configuration
  networking.hostName = "dvpc";

  # Boot loader configuration
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Define your user properly
  users.users.david = {
    isNormalUser = true;
    description = "David Vogel";
    group = "david";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  # Create the user group
  users.groups.david = { };

  # Basic system configuration
  time.timeZone = "America/Detroit";
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable Supernote sync tool
  # services.supernote-watcher.enable = true;

  # Set the state version
  system.stateVersion = "25.05";
}
