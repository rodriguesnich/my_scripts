sudo snap install dotnet-sdk --classic --channel=5.0

sudo snap alias dotnet-sdk.dotnet dotnet

sudo snap install dotnet-runtime-50 --classic

sudo snap alias dotnet-runtime-50.dotnet dotnet

export DOTNET_ROOT=/snap/dotnet-sdk/current

# Install the .NET 5 SDK as a snap package.
# The snap package will automatically be mounted.
snap install dotnet-sdk --channel=5.0/beta --classic

# To find out where the snap package has been mounted,
# list all block devices and look for /snap/dotnet-sdk/
# in the MOUNTPOINT column. Remember the name of the loop
# device.
lsblk

# To get the actual path of the snap package file, run
# the following command with the name of the loop device.
# Replace XXX with the number of your loop device.
# The path in the BACK-FILE column points to the snap package.
losetup --list /dev/loopXXX

# Create a folder where we're extracting the snap package into.
mkdir dotnet-snap-fix
cd dotnet-snap-fix

# Extract the snap package into this directory.
# Add the correct BACK-FILE path to your snap package here.
sudo unsquashfs /var/lib/snapd/snaps/dotnet-sdk_67.snap

# Change the permissions of the snap folder containing the runner
# to be readable and executable. This will fix the permission problem.
sudo chmod -R +rx ./squashfs-root/snap/

# Create a new snap package with the changed permissions.
# Make sure to use the same file name as in the BACK-FILE path.
sudo mksquashfs ./squashfs-root/ dotnet-sdk_67.snap -comp xz -all-root

# Overwrite the old snap package with our new one.
# Make sure the file name is correct (same as in BACK-FILE).
sudo mv ./dotnet-sdk_67.snap /var/lib/snapd/snaps/

# Finally reboot your machine so the changes are detected.
sudo reboot

# Do not use snap disable / snap enable, they will replace the
# fixed snap package with the broken one again.
# After the reboot, the dotnet-sdk.dotnet command will work without sudo.
dotnet-sdk.dotnet
