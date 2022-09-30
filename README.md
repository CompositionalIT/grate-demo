# grate demo

1. Create a Docker container to run the tests against
   ```sh
   docker run --name grate-test -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2019-latest
   ```
2. Checkout v1.0.0
   ```sh
   git checkout v1.0.0 
   ```
3. Run grate
   ```sh
   dotnet grate --connectionstring='Data Source=localhost;User=sa;Password=yourStrong(!)Password;Database=grate_test;TrustServerCertificate=True' --silent --version 1.0.0
   ```
4. Inspect database
   ```sql
   SELECT *
   FROM SettlementType
   ```
   
   | ID | Name |
   | -- | ---- |
   | 1 | Hamlet |
   | 2 | Village |
   | 3 | Town |
   | 4 | City |
5. Checkout v1.1.0
   ```sh
   git checkout v1.1.0 
   ```
6. Run grate
   ```sh
   dotnet grate --connectionstring='Data Source=localhost;User=sa;Password=yourStrong(!)Password;Database=grate_test;TrustServerCertificate=True' --silent --version 1.1.0
   ```
7. Inspect database
   ```sql
   SELECT *
   FROM SettlementType
   ```
   
   | ID | Name | Code |
   | -- | ---- | ---- |
   | 1 | Hamlet | H |
   | 2 | Village | V |
   | 3 | Town | T |
   | 4 | City | C |
