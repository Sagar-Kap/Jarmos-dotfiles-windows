# Windows PowerShell

[Windows PowerShell][Windows PowerShell] is the shell scripting environment which comes preinstalled on all Windows machines. As it's name suggest it's quite powerful & is capable of varying tasks which are synonymous to other programming/scripting languages like Python. So, if you're not using it yet, don't wait, get started right now!

That said, this directory holds my Windows PowerShell "_Profile_". If you've used Bash on Unix-like environments before, the PowerShell Profile is synonymous to `.bashrc`/`.bash_profile`. So, every time you create/open a PowerShell session on say [Windows Terminal](./../windows-terminal), the Profile will also be invoked.

Do note, the PowerShell Profile is a valid PowerShell file with a `.ps1` file extension. So, all valid PowerShell cmdlets, functions & so on will work. Additionally, you can also access the file through the `$PROFILE` Environment Variable.

## Windows PowerShell vs PowerShell Core

If you've never used PowerShell before, it can be confusing to find two different versions of PowerShell. Besides, even Microsoft's choice for versioning PowerShell is very awkward. Hence, this brief section will attempt to clear up the confusion as quick as possible.

That said, Windows PowerShell is the default shell scripting environment which comes preinstalled on any new Windows machines. And as of the lastest commit to this README, it's versioned as PowerShell v5.x. Also note, this version of PowerShell **DOESN'T** work on other platforms.

On the other hand, [PowerShell Core][PowerShell Core] is the cross-platform & open-source variant. So, in case you prefer to script with PowerShell on Ubuntu, go for PowerShell Core. Besides, contrary to it's Windows variant, PowerShell Core started versioning from v6.x onwards. And I believe, this is where most of the confusion started.

There're some inherent differences & similarities as well between the two variants. So, I strongly suggest taking a look at [the official documentations on the differences][What's New in PowerShell 7.0?].

On that note, configuring Windows PowerShell `Profile` & that of PowerShell Core are the same! The only differences being the locations where you can find that specific file in question.

## How I Configure my PowerShell Profile

I tend to keep my PowerShell Profile as simple as possible, since a huge one tends to increase the loading times. And even with this simple `Profile` my PowerShell sessions usually takes anywhere between 400-20000ms to load at times!

That said, here's what I included in my `Profile`:

```powershell
# Loads the starship prompt in PowerShell
Invoke-Expression (&starship init powershell)

# Configures Starship to use the %TEMP% directory for caching
$ENV:STARSHIP_CACHE = Resolve-Path -Path $ENV:TEMP

# Path to the Starship configuration file
$ENV:STARSHIP_CONFIG = Resolve-Path -Path "$ENV:USERPROFILE\.starship\starship.toml"
```

With all the comments, I'm sure it's quite self-explanatory, but if it's not, here's an overview;

- It invokes the [Starship](../starship) binary which is already available on `$PATH`.
- Configures the Starship cache location to the `%TEMP%` folder so that it can be cleaned up at regular intervals.
- Configures the file path to the `starship.toml` file on the system.

So, as you can see, it's fairly simple & it was intentional.

## Further References

There's more to customizing your PowerShell experience, so following are some resources you might find useful while doing so. But keep customizing your `Profile` at the minimal as much as possible. Failing to do so can mean increased loading times which can be infuriating at times.

- [About Profiles][About Profiles]
- [Understanding the Six PowerShell Profiles][About PowerShell rofiles]

<!-- Reference Links: -->
[Windows PowerShell]: https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-5.1
[PowerShell Core]: https://github.com/PowerShell/PowerShell
[What's New in PowerShell 7.0?]: https://docs.microsoft.com/en-us/powershell/scripting/whats-new/what-s-new-in-powershell-70?view=powershell-7.1
[About Profiles]: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.1
[About PowerShell Profiles]: https://devblogs.microsoft.com/scripting/understanding-the-six-powershell-profiles/
