# Setup a systemd service for the API

 1. Copy this repository to your server
 2. Copy the `alise-plumber-api.service` file to `/etc/systemd/system`
 3. Replace the environment variables and path to the `alise_r` folder with actual values
 4. Enable the service with `sudo systemctl enable alise-plumber-api`
 5. Start the service with `sudo systemctl start alise-plumber-api`

To see the R output, run `journalctl -u alise-plumber-api`

## Resources
https://www.rplumber.io/articles/hosting.html#systemd
