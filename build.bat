@echo off
if not exist packages\FAKE\tools\Fake.exe ( 
  .nuget\nuget.exe install FAKE -OutputDirectory packages -ExcludeVersion  
)
if not exist packages\FSharp.Formatting\lib\net40\FSharp.Literate.dll ( 
  .nuget\nuget.exe install FSharp.Formatting -OutputDirectory packages -ExcludeVersion  
)
packages\FAKE\tools\FAKE.exe build.fsx %*
pause