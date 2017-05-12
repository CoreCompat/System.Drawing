# System.Drawing for .NET Core 2.0
[![Build status](https://ci.appveyor.com/api/projects/status/1t79xy51m7fkg8re?svg=true)](https://ci.appveyor.com/project/qmfrederik/system-drawing)
[![Build Status](https://travis-ci.org/CoreCompat/System.Drawing.svg?branch=master)](https://travis-ci.org/CoreCompat/System.Drawing)

This repository contains an implementation of System.Drawing which is compatible with .NET Core 2.0 and .NET Standard 2.0.
It uses the Mono implementation of System.Drawing and runs on Windows, Linux and Mac.

System.Drawing for .NET Core is available as the CoreCompat.System.Drawing NuGet package.

## Running System.Drawing for .NET Core 2.0 on OS X or Linux

System.Drawing for .NET Core uses libgdiplus for some of the heavy lifting.

If you're using Linux, libgdiplus is probably part of your Linux distribution, and you should be able to install it using
commands like `apt-get install -y libgdiplus` or the equivalent for your Linux distribution.

On macOS, you (for now) need to compile libgdiplus from source, but we're working to get it included in Homebrew - see [this PR](https://github.com/Homebrew/homebrew-core/pull/12862)
for more information.

Alternatively, you can also use NuGet packages which include libgdiplus:

- Linux: runtime.linux-x64.CoreCompat.System.Drawing
- OS X: runtime.osx.10.10-x64.CoreCompat.System.Drawing