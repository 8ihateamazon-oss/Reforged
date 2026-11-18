# Reforged Enhancements

Reforged is a Da Hood script for Potassium. This build includes the original UE theme presets, Silent Aim with shared Targeting controls, and separate FOV displays.

Run this permanent loader to retrieve the published script.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/8ihateamazon-oss/Reforged/main/loader.lua"))()
```

The timestamp form is also supported.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/8ihateamazon-oss/Reforged/main/loader.lua?v=" .. tostring(os.time())))()
```

Each loader execution requests main.lua with a timestamp query. HTTP caches can affect freshness. Re-execute the loader to pick up a published update.

release.json records the SHA-256 and byte length of main.lua for publication verification. The loader does not validate this manifest at runtime.
