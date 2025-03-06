The `systemd` unit file in this directory should launch the [redlib](https://github.com/redlib-org/redlib) binary. Update `ExecStart` to point to the `redlib` binary on disk, install as a user in `~/.config/systemd/user`, and activate with `sytemctl enable --user redlib.service`.

Then, navigate to `localhost:7333` in a browser and it should work!

`update-redlib` is a shell script that automates redlib updates. Might need some path updates, though.
