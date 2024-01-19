#!/bin/bash

# Create a new Nx workspace
npx create-nx-workspace my-monorepo --preset=empty --appName=my-app

# Navigate to the workspace directory
cd my-monorepo

npm i @nrwl/react

# Add React application to the workspace
npx nx generate @nrwl/react:app ui --style=css

npm i @nestjs/schematics

# Add Nest.js application to the workspace
npx nx generate @nestjs/schematics:application api

# Install dependencies for the React app
cd apps/ui
npm install

# Install dependencies for the Nest.js app
cd ../../apps/api
npm install

# Navigate back to the root of the workspace
cd ../..

# Create a shared library for common code (optional)
npx nx generate @nrwl/react:library shared

# Install dependencies for the shared library (if created)
cd libs/shared
npm install

# Navigate back to the root of the workspace
cd ../..

# Display a message with instructions for running the applications
echo "Project setup completed!"
echo "To run the React app, navigate to 'apps/my-app' and run 'npm start'."
echo "To run the Nest.js app, navigate to 'apps/my-api' and run 'npm start'."
