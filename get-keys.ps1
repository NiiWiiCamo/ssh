cd ~
$path = "~\\.ssh"
if(!(test-path $path))
{new-item -itemtype directory -path $path}
$auth = ".ssh\authorized_keys"
$url = "https://raw.githubusercontent.com/NiiWiiCamo/ssh/master/keys"
date | set-content -encoding utf8 $auth
(curl $url).Content | add-content $auth
