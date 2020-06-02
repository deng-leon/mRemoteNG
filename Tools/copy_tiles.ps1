param (
    [string]
    [Parameter(Mandatory=$true)]
    $SolutionDir,

    [string]
    [Parameter(Mandatory=$true)]
    $TargetDir
)

Write-Output "===== Beginning $($PSCmdlet.MyInvocation.MyCommand) ====="
Write-Output "Copying TILES folder to output"

$sourceFiles = [io.path]::combine($SolutionDir , 'mRemoteNG\Resources\Tiles' ) 
robocopy $sourceFiles $TargetDir *.*

Write-Output ""