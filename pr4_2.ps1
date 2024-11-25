# EZ verison
Write-Host "Select Country :" -ForegroundColor Yellow
Write-Host "1: India" -ForegroundColor Cyan
Write-Host "2: Australia" -ForegroundColor Cyan
Write-Host "3: China" -ForegroundColor Cyan

$value1 = Read-Host "Please select country: "

if ($value1 = 1) {
    Write-Host "The capital of india is New Delhi" -ForegroundColor Green
} elseif ($value1 = 2) {
    Write-Host "The capital of Austrailia is Canberra" -ForegroundColor Green
} elseif ($value1 = 3) {
    Write-Host "The capital of china is Beijing" -ForegroundColor Green
}

#Hard version

$countries = @('India', 'Australia', 'China')
$capitals = @('New Delhi', 'Canberra', 'Beijing')

Write-Host "Select country:" -ForegroundColor Yellow
for($i = 0; $i -lt $countries.Count; $i++){
    Write-Host ($i + 1)":"$countries[$i] -ForegroundColor Cyan
}

$selectedCountry = Read-Host "Please select country"
if($selectedCountry -ge 1 -and $selectedCountry -le $countries.Count){
    Write-Host "$($countries[$selectedCountry-1])'s capital is $($capitals[$selectedCountry-1])" -ForegroundColor Green
} else {
    Write-Host "Use only 1-3 numbers" -ForegroundColor Red
}