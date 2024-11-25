# Ask the user to enter the first value
$value1 = Read-Host "Enter the first value"
$value2 = Read-Host "Enter the second value"


if ($value1 -gt $value2) {
    Write-Host "The higher number is : $value1"
} elseif ($value2 -gt $value1) {
    Write-Host "The higher number is : $value2"
} else {
    Write-Host "Both numbers are equal."
}