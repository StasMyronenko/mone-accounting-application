from sqlalchemy import create_engine

engine = create_engine("mssql+pyodbc://SA:Admin123!@0.0.0.0:1433/AccountingMoney?driver=ODBC+Driver+17+for+SQL+Server", echo=False)
