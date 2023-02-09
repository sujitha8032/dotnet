# Use the Microsoft .NET Core SDK as the base image
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env

# Set the working directory
WORKDIR /app

# Copy the solution and project files
COPY . .

# Restore the dependencies
RUN dotnet restore

# Build the application
RUN dotnet publish -c Release -o out

# Use the Microsoft .NET Core runtime as the final image
FROM mcr.microsoft.com/dotnet/aspnet:5.0

# Set the working directory
WORKDIR /app

# Copy the application files from the build environment
COPY --from=build-env /app/out .

# Expose port 80
EXPOSE 80

# Define the command to run the application
ENTRYPOINT ["dotnet", "myapp.dll"]
