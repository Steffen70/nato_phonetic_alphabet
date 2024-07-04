## How to add this PowerShell module to your path

1. Clone this repository to your local machine
2. Open your terminal and navigate to the directory where you cloned the repository
3. Run the following command to add the module to your path:

```powershell
$env:PSModulePath = $env:PSModulePath + ";$(Get-Location)"
```

4. You can now import the module in your PowerShell session

```powershell
Import-Module ToNato
```

5. You can also make it persistent by adding the command to your PowerShell profile

```powershell
# Add the module to your PowerShell profile
Add-Content $PROFILE -Value "`$env:PSModulePath = `$env:PSModulePath + `";$(Get-Location)`""

# Import the module in your PowerShell profile
Add-Content $PROFILE -Value 'Import-Module ToNato'
```

6. Restart your PowerShell session and you should be able to use the module

## How to use the module

```powershell
# Convert a string to NATO phonetic alphabet
ConvertTo-Nato "Hello, World!"
```
