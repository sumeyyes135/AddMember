Import-module ActiveDirectory  
Import-CSV "C:\path\for\activeusers.csv" | % {  
Add-ADGroupMember -Identity "CN= GroupName OU= ." -Member $_.UserName  
} 
