This guide explains how to install and set up the Starlight CLI.

---

# Requirements

Before installing, make sure you have:

- Node.js (version 16 or higher recommended)
- npm (comes with Node.js)

Check versions:

```

node -v
npm -v

```

---

# Install Starlight CLI

Run the following command:

```

npm install -g starlight-cli

```

This installs Starlight globally so the `starlight` command works anywhere on your system.

---

# Verify Installation

After installing, run:

```

starlight -v

```

You should see the CLI version printed in the terminal.

---

# Basic Usage

Run a Starlight file:

```

starlight app.sl

```

---

# Create Your First File

Create a file named `hello.sl`:

```

define name = "World"
sldeploy("Hello " + name)

```

Run it:

```

starlight hello.sl

```

---

# Interactive Mode

Start the interactive editor:

```

starlight --writedirectly

```

Then type your code and run:

```

:run

```

---

# Open Learning Guide

```

starlight --learn

```

---

# Updating

```

npm update -g starlight-cli

```

---

# Uninstall

```

npm uninstall -g starlight-cli

```

---

# Troubleshooting

## Command Not Found

If `starlight` is not recognized:

- Ensure npm global bin is in your PATH
- Restart your terminal

Check path:

```

npm config get prefix

```

---

## Permission Errors

If you encounter permission issues, avoid using elevated privileges.

Instead, configure npm to use a user-level directory:

```

npm config set prefix ~/.npm-global

```

Then add it to your PATH:

```

export PATH=~/.npm-global/bin:$PATH

```

Restart your terminal and reinstall:

```

npm install -g starlight-cli

```

---

# Notes

- `.sl` files run via CLI
- `.md` files open as rendered HTML
- Works on Windows, macOS, and Linux


# End of Installation Guide
```
