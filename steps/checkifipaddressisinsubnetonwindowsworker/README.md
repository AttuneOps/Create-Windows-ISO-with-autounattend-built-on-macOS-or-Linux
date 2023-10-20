# To Debug
* Uncomment out the `Write-Host`s to debug.


# Logic
* For loop loops through each octet in the IP address, subnet range octet and subnet mask.
* For each octet:
    * The min octet is the subnet octet bitwised `AND`ed with the netmask octet.
    * A wildcard octet is 255 - netmask octet.
    * The max octet is the subnet octet bitwised `OR`ed with the wildcard octet.
    * The IP address octet is tested to see if it is between the min and max octets.

# References

[Subnet Cheat Sheet - 24 Subnet Mask, 30, 26, 27, 29, and other IP Address CIDR Network References](https://www.freecodecamp.org/news/subnet-cheat-sheet-24-subnet-mask-30-26-27-29-and-other-ip-address-cidr-network-references/)