# Define the input CSV file path
$inputCsv = ".\data.csv"

# Define the output CSV file path
$outputCsv = "updated_students.csv"

# Read the CSV file
$students = Import-Csv -Path $inputCsv

# Create an empty array to store the updated records
$updatedStudents = @()

# Loop through each student record
foreach ($student in $students) {
    # Determine the school category based on age
    if ($student.Age -ge 4 -and $student.Age -le 10) {
        $schoolCategory = "Junior School"
    } elseif ($student.Age -ge 11 -and $student.Age -le 17) {
        $schoolCategory = "Senior School"
    } else {
        $schoolCategory = "Unknown"
    }
    
    # Create a new object with Name and School Category
    $updatedStudent = New-Object PSObject -property @{
        Name           = $student.Name
        SchoolCategory = $schoolCategory
    }

    # Add the updated student record to the array
    $updatedStudents += $updatedStudent
}

# Export the updated records to a new CSV file
$updatedStudents | Export-Csv -Path $outputCsv -Force

# Output the result to the console for verification
$updatedStudents | Format-Table -AutoSize