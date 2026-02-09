import os
import re

def generate_rsc_files():
    """Generate RouterOS .rsc files from existing .conf files"""

    input_dir = 'Country_CIDR'
    output_dir = 'Country_CIDR_RSC'

    # Create output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)

    # Get all .conf files
    conf_files = [f for f in os.listdir(input_dir) if f.endswith('.conf')]

    print(f"Found {len(conf_files)} .conf files to process")

    for conf_file in conf_files:
        # Determine if it's IPv4 or IPv6
        is_ipv6 = '_IPv6' in conf_file

        # Extract country code from filename
        country_code = conf_file.replace('.conf', '').replace('_IPv6', '')

        # Read the .conf file
        input_path = os.path.join(input_dir, conf_file)

        with open(input_path, 'r') as f:
            lines = f.readlines()

        # Extract CIDR addresses
        cidrs = []
        for line in lines:
            # Match lines like: route 1.0.1.0/24 via "lo";
            match = re.search(r'route\s+([^\s]+)\s+via', line)
            if match:
                cidrs.append(match.group(1))

        if not cidrs:
            print(f"Warning: No CIDR addresses found in {conf_file}")
            continue

        # Generate output filename
        if is_ipv6:
            output_file = f"{country_code}_IPv6.rsc"
        else:
            output_file = f"{country_code}.rsc"

        output_path = os.path.join(output_dir, output_file)

        # Write .rsc file
        with open(output_path, 'w') as f:
            # Write header
            if is_ipv6:
                f.write(f'/log info "Loading {country_code} IPv6 Address List"\n')
                f.write('/ipv6 firewall address-list\n')
            else:
                f.write(f'/log info "Loading {country_code} IPv4 Address List"\n')
                f.write('/ip firewall address-list\n')

            # Write CIDR entries
            for cidr in cidrs:
                f.write(f':do {{ add list={country_code} address={cidr} }} on-error={{}}\n')

        print(f"Generated {output_file} with {len(cidrs)} entries")

    print(f"\nAll .rsc files have been generated in {output_dir}/")

if __name__ == '__main__':
    generate_rsc_files()
