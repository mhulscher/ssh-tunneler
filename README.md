## openssh-tunneler

Creates an SSH-tunnel. Authenticates *only* with a public/private keypair.

### Configuration

| ENV-variable | Description
|---|---
| `SSH_LOCAL_PORT` | The localport on which the container will bind
| `SSH_REMOTE_HOST` | The final destination host you want to connect to, through the tunnel
| `SSH_REMOTE_PORT` | The final destination port you want to connect to, through the tunnel
| `SSH_TUNNEL_HOST` | The host to which we authenticate and through which we tunnel the connection. Default `10000`
| `SSH_TUNNEL_PORT` | The port on which we connect to the SSH-daemon of the `SSH_TUNNEL_HOST`. Default `22`
| `SSH_TUNNEL_USER` | The user with which we authenticate against `SSH_TUNNEL_HOST:SSH_TUNNEL_PORT`
| `SSH_ID_RSA` | Base64-encoded string of `~/.ssh/id_rsa`. ***Required***
