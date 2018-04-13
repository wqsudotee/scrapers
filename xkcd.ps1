$url = cmd.exe /c "curl -k https://xkcd.com | grep src|grep img|grep comics"
$url = $url.split('"')[1].Substring(2)
cmd.exe /c "curl $url > comic.png"