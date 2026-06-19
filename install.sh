#!/bin/sh
# Dotfiles install script for Void Linux + mango Wayland setup
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# ── Packages ──────────────────────────────────────────────────────────────────

PACKAGES="
  mangowc
  waybar
  foot foot-terminfo
  rofi
  grim slurp wl-clipboard
  swaybg swww
  pywal
  nsxiv
  pfetch
  pipewire pipewire-pulse wireplumber alsa-pipewire
  xdg-desktop-portal xdg-desktop-portal-wlr
  dbus
  alacritty
  ghostty
"

echo "==> Installing packages..."
sudo xbps-install -Sy $PACKAGES

# ── Symlinks ──────────────────────────────────────────────────────────────────

link() {
  src="$DOTFILES/$1"
  dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "  [backup] $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi
  ln -sfn "$src" "$dest"
  echo "  [link] $dest"
}

echo "==> Linking configs..."

link config/mango          "$HOME/.config/mango"
link config/waybar         "$HOME/.config/waybar"
link config/rofi           "$HOME/.config/rofi"
link config/foot           "$HOME/.config/foot"
link config/alacritty      "$HOME/.config/alacritty"
link config/ghostty        "$HOME/.config/ghostty"
link config/wal            "$HOME/.config/wal"
link config/gtk-3.0        "$HOME/.config/gtk-3.0"
link config/xdg-desktop-portal "$HOME/.config/xdg-desktop-portal"

link home/.bashrc          "$HOME/.bashrc"
link home/.bash_profile    "$HOME/.bash_profile"
link home/.inputrc         "$HOME/.inputrc"

mkdir -p "$HOME/.local/bin"
link bin/screenshot        "$HOME/.local/bin/screenshot"
link bin/setwall           "$HOME/.local/bin/setwall"
link bin/wallpick          "$HOME/.local/bin/wallpick"

chmod +x "$DOTFILES/bin/"*

echo "==> Done. Log out and back in (or reboot) to start mango."
