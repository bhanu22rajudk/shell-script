#!/usr/bin/env bash
# Beginner guide to common data types, using examples from a company.
# Run this script with: bash 09-datatypes.sh

echo "=== Data types in Bash ==="
echo "A data type describes the kind of value a variable stores."
echo "Bash variables are flexible; quotes preserve text and arithmetic uses (( ))."
echo

# String: text such as an environment name or service name.
environment="production"
service_name="payments-api"
echo "STRING: deploying $service_name to $environment"

# Integer: whole numbers, useful for counts and limits.
active_users=125
new_users=8
total_users=$((active_users + new_users))
echo "INTEGER: $active_users + $new_users = $total_users users"

# Boolean: Bash has no separate Boolean variable type; a test command succeeds or fails.
service_status="running"
if [[ "$service_status" == "running" ]]; then
	echo "BOOLEAN: service is healthy (true)"
else
	echo "BOOLEAN: service needs attention (false)"
fi

# Indexed array: an ordered list, useful for servers or deployment tasks.
servers=("web-01" "web-02" "worker-01")
echo "ARRAY: ${#servers[@]} servers are scheduled"
for server in "${servers[@]}"; do
	echo "  Checking server: $server"
done

# Associative array: key/value pairs, useful for configuration or records (Bash 4+).
declare -A employee
employee[name]="Bhanu"
employee[team]="Operations"
employee[location]="London"
echo "ASSOCIATIVE ARRAY: ${employee[name]} works in ${employee[team]} (${employee[location]})"

# Decimal values: Bash arithmetic handles integers only; awk can calculate decimals.
monthly_cost=19.95
quantity=3
total_cost=$(awk -v price="$monthly_cost" -v count="$quantity" 'BEGIN { printf "%.2f", price * count }')
echo "DECIMAL: $quantity licenses at \$$monthly_cost each cost \$$total_cost"

echo
echo "In a company, scripts use these values to report deployments,"
echo "check service health, manage server lists, and calculate costs."
