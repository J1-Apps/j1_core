#!/usr/bin/env bash

# Remove existing coverage directory if it exists
if [ -d "coverage" ]; then
  rm -rf coverage
fi

# Create coverage directory
mkdir -p coverage

# Initialize empty coverage file
> coverage/lcov.info

# Function to run tests and combine coverage for a package
run_package_tests() {
  local package_dir=$1
  echo "Running tests for $package_dir..."
  
  # Navigate to package directory
  cd "$package_dir"
  
  # Run flutter tests with coverage
  flutter test --coverage --no-pub
  
  if [ -f "coverage/lcov.info" ]; then
    # Get the escaped path for sed
    local escaped_path="$(echo $(pwd) | sed 's/\//\\\//g')"
    
    # Modify the coverage file paths to include the full package path
    sed "s/^SF:lib/SF:$escaped_path\/lib/g" coverage/lcov.info >> "$OLDPWD/coverage/lcov.info"
    
    # Clean up package coverage directory
    rm -rf coverage
  fi
  
  # Return to root directory
  cd "$OLDPWD"
}

# Find all packages with pubspec.yaml and test directory
for package_dir in packages/*/; do
  if [ -f "${package_dir}pubspec.yaml" ] && [ -d "${package_dir}test" ]; then
    run_package_tests "$package_dir"
  fi
done

# Generate HTML coverage report
genhtml coverage/lcov.info -o coverage/html

echo "Coverage collection complete. Combined results are in coverage/lcov.info" 