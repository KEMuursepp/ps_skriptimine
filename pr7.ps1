$groups = @('Red', 'Green', 'Yellow', 'Blue')
$stundentGroups = @()

for($i = 1; $i -le 20; $i++){
    $group = $groups | Get-Random
    $stundentGroups += [PSCustomObject]@{'RollNumber'=$i; 'Group'=$group}
}

$stundentGroups