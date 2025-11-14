let
  # Your personal age key (from ~/.config/age/keys.txt
  # TODO joshua = "age1k0sc4ugaxzpav2rs8cmugwthaa3tpuzygvax8u84m6sm9ldh737qspv058";

  # Machine age keys

  # Groups for convenience
  users = [ david ];
  allSystems = users ++ servers;
in
{
  "canlock.age".publicKeys = users;
  "gnus-name.age".publicKeys = users;
  "gnus-email.age".publicKeys = users;
  "restic-password.age".publicKeys = users;
  "storagebox.age".publicKeys = users;
  "miniflux-admin.age".publicKeys = servers;
}
