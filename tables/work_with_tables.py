from sqlalchemy import text

from config.db_config import engine


def get_all_tables():
    request = 'SELECT name FROM sys.tables'
    with engine.connect() as conn:
        response = conn.execute(text(request)).all()
        result = [element[0] for element in response]
        return result


def get_data_from(table: str):
    request = f'SELECT * FROM {table}'
    with engine.connect() as conn:
        response = conn.execute(text(request)).all()
        return response


def insert_into(table: str, data: tuple | list | str):
    request = f'INSERT INTO {table} VALUES {data}'
    print(request)
    with engine.connect() as conn:
        conn.execute(text(request))
        return 'Done'


def get_full_incomes():
    request = '''SELECT Income.Sum, Income.BankAccountID, Income.FromAccount, P.Name, P.Price, P.Description FROM Income
    JOIN Income_Product IP on Income.ID = IP.IncomeID
    JOIN Product P on P.ID = IP.ProductID'''
    with engine.connect() as conn:
        response = conn.execute(text(request)).all()
        return response


def get_low_cost_products():
    request = '''SELECT * FROM Product WHERE Product.Price < 100000'''
    with engine.connect() as conn:
        response = conn.execute(text(request)).all()
        return response


def get_all_earned_money():
    request = '''SELECT SUM(Sum) FROM Income'''
    with engine.connect() as conn:
        response = conn.execute(text(request)).all()
        return response[0][0] / 100
