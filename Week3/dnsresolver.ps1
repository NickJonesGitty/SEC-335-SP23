param($prefix, $dns)

for ($x=1; $x -le 254; $x++)
{
    $address = "$prefix.$x"
    Resolve-DnsName -DnsOnly $address -Server $dns -ErrorAction Ignore | Select-Object Name, NameHost

}