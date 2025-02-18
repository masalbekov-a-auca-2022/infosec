#!/bin/bash

current_time=$(date +%H:%M)
end_time="18:00"

# Convert times to seconds since midnight
current_seconds=$(date -d "$current_time" +%s)
end_seconds=$(date -d "$end_time" +%s)

# Calculate remaining time in seconds
remaining_seconds=$((end_seconds - current_seconds))

# Convert seconds into hours and minutes
if [ $remaining_seconds -gt 0 ]; then
    hours=$((remaining_seconds / 3600))
    minutes=$(((remaining_seconds % 3600) / 60))
    echo "Current time: $current_time. Work day ends after $hours hours and $minutes minutes."
else
    echo "Workday is over! Current time: $current_time."
fi
