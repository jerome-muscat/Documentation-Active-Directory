$CSVFile = ".\utilisateur.csv"
$CSVData = Import-Csv -Path $CSVFile -Delimiter "," -Encoding UTF8

Foreach ($Utilisateur in $CSVData) {
    $UtilisateurPrenom = $Utilisateur.Prenom
    $UtilisateurNom = $Utilisateur.Nom
    $UtilisateurLogin = $UtilisateurPrenom.ToLower() + "." + $UtilisateurNom.ToLower()
    $UtilisateurMdp = "mdp"
    if (Get-ADUser -Filter {SamAccountName -eq $UtilisateurLogin}) {
        Write-Warning "L'utilisateur $UtilisateurLogin existe déjà"
    } else {
        New-ADUser -Name "$UtilisateurNom $UtilisateurPrenom" `
        -DisplayName "$UtilisateurNom $UtilisateurPrenom" `
        -GivenName $UtilisateurPrenom `
        -Surname $UtilisateurNom `
        -SamAccountName $UtilisateurLogin ` 
        -UserPrincipalName "ACTIVE_DIRECTOR\$UtilisateurLogin" `
        -Path "OU=Users,DC=active_directory,DC=local" `
        -AccountPassword (ConvertTo-SecureString "$UtilisateurMdp" -AsPlainText -Force) `
        -Enabled $true -ChangePasswordAtLogon $true
        Write-Output "L'utilisateur $UtilisateurLogin a été créé"
    }
}