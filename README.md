# play-blazor
Playing with Blazor

### Adding GitHub Pages build ability

This adds automatic decompression of brocili files.

```bash
dotnet add package PublishSPAforGitHubPages.Build
```

Build with:

```bash
dotnet publish -c:Release -p:GHPages=true
```


References:

https://dev.to/j_sakamoto/the-easier-way-to-publish-your-blazor-webassembly-app-for-github-pages-319l
https://docs.microsoft.com/en-us/aspnet/core/blazor/host-and-deploy/webassembly?view=aspnetcore-5.0


### Minimizing Application Size


References:

https://www.meziantou.net/optimizing-a-blazor-webassembly-application-size.htm

### Adding Logging

https://github.com/serilog/serilog-sinks-browserconsole

```bash
dotnet add package Serilog.Sinks.BrowserConsole --prerelease
```


