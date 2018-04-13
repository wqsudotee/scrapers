$url = cmd.exe /c "curl -k dilbert.com | grep src|grep amuniv"
$url = $url.split('"')[9]
echo $url
cmd.exe /c "curl $url > comic.gif"