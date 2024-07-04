# Function to convert a string to NATO phonetic alphabet
function ConvertTo-Nato {
    param (
        [string]$inputString
    )
    
    $nato = @{
        'A' = 'Alpha'
        'B' = 'Bravo'
        'C' = 'Charlie'
        'D' = 'Delta'
        'E' = 'Echo'
        'F' = 'Foxtrot'
        'G' = 'Golf'
        'H' = 'Hotel'
        'I' = 'India'
        'J' = 'Juliett'
        'K' = 'Kilo'
        'L' = 'Lima'
        'M' = 'Mike'
        'N' = 'November'
        'O' = 'Oscar'
        'P' = 'Papa'
        'Q' = 'Quebec'
        'R' = 'Romeo'
        'S' = 'Sierra'
        'T' = 'Tango'
        'U' = 'Uniform'
        'V' = 'Victor'
        'W' = 'Whiskey'
        'X' = 'X-ray'
        'Y' = 'Yankee'
        'Z' = 'Zulu'
    }

    $output = ""

    foreach ($char in $inputString.ToUpper().ToCharArray()) {
        $char = $char.ToString()
        if ($nato.ContainsKey($char)) {
            $output += $nato[$char] + " "
        }
        else {
            $output += $char + " "
        }
    }

    Write-Host $output.Trim()
}

Export-ModuleMember -Function ConvertTo-Nato
