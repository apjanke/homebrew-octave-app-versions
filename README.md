homebrew-octave-app-versions
============================

Legacy versioned Homebrew formulae for Octave.app.

This is the tap for Octave.app's versioned formulae, which were used in versions prior to Octave 5.0. (At that time, this tap was named homebrew-octave-app.) As of Octave 5.0, we have switched to using non-versioned dependencies and git tags, so this repo is only of historical interest.

These formulae are intended primarily for use in the bundled app, so they have minimal options defined in them, and may have other special tweaks to work correctly in this context. They are also not intended to coexist with their non-versioned variants, so they do not have `keg_only` or `conflicts_with` defined. They will not work if you try to install them into a regular Homebrew installation.

This tap lives at https://github.com/octave-app/homebrew-octave-app-versions. Please report any bugs there.
