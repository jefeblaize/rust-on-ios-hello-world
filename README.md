## Build & Deploy on iOS using Rust Libraries
###### notes from 2023-04-24


_This is a seemingly decent_ ["Hello World!"](https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-06-rust-on-ios.html) _I found at_ https://mozilla.github.io/firefox-browser-architecture/experiments/2017-09-06-rust-on-ios.html _on the Interwebs. Commentary, issues, bugs noted below..._

I just realized I made this repo **public** on accident, and although I'm sure it's super easy to switch it to private, I figured what the hell... Maybe someone out there can learn from what I find by following along. You see, I'm completely new to Rust, so every moment with it is a new one for me right now. Regardless, unlike the author of the above web page, I'm not trying to reach a larger audience, so if my shorthand notes suck, you should prob refer back to the original text or just buzz off. ☮

Let's do this...

**Ok, I'll throw you one bone.** You're gonna need Xcode commandline shit installed `(xcode-select --install)`, but just install the entire Xcode.app from the store b/c you'll need all of it. And you'll need [Homebrew](https://brew.sh/) installed. If you don't know what that is, honestly don't bother with this right now. Go get some sun and ride a bike or talk face-to-face with a beautiful woman somewere and pretend you never heard these terms. Seriously, go. Be free. Bye. You're welcome.

Anyway, you obviously need git and/or the Github cmdline tools, and Rust. I've found the best way to install Rust via `brew` is by installing `rustup-init` (and running that) instead of installing `rust`. I think that's what I did... Hrm, either that or I ran the installer by hand. Who cares. _Oh shit, I'm doing it again: writing for an audience. I don't have time for that, I'll never get thru this that way, so that stops now..._ 🖕

```
$ mkdir greetings; cd greetings/
$ cargo install cargo-lipo  # THE cross-compiler secret sauce that supposedly makes iOS a worthwhile destination.
$ rustup target add aarch64-apple-ios armv7-apple-ios armv7s-apple-ios x86_64-apple-ios i386-apple-ios
```
Oops. The 32-bit support for the crossed out packages above are no longer valid: `armv7-apple-ios` and `armv7s-apple-ios`. Oh and `i386-apple-ios`. Just 3 of the 5 listed. (I'm not getting a warm and fuzzy about this working at his point.) Anyway, retry that last line:

```
$ rustup target add aarch64-apple-ios x86_64-apple-ios  # iss cool. don't worry.
$ cargo new cargo  # to initialize the rust project
```
This last line creates a dir `cargo/` and fills it with:
1. a `Cargo.lock` file _(similar to package-lock? -Ed.)_
1. a `Cargo.toml` file _(maybe like package.json? -Ed.)_
1. `src/` and `target/` dirs inside `cargo/`, prob for what they sound like they're for.
1. a badly needed `.gitignore` and other git shit (+10 points for rhyming)
```
$ mkdir ios
```
Note: next we're editing the `src/lib.rs` file in the doc, except it's actually called `main.rs`. That seems like a potential problem.






