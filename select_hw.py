import logging
from psycopg2 import DatabaseError
from connect import create_connection

def load_sql_from_file(filename):
    with open(filename, 'r') as file:
        return file.read()

if __name__ == '__main__':
    sql_expression_01 = load_sql_from_file('query_number_1.sql')

    try:
        with create_connection() as conn:
            if conn is not None:
                c = conn.cursor()
                try:
                    # Выполнение первого запроса
                    c.execute(sql_expression_01, (13,))
                    print(c.fetchone())

                    # Выполнение второго запроса (запрос из файла)
                    c.execute(sql_expression_01)
                    result = c.fetchall()
                    print(result)  # Выводим результат второго запроса

                except DatabaseError as e:
                    logging.error(e)
                finally:
                    c.close()
            else:
                print("Error! cannot create the database connection.")
    except RuntimeError as err:
        logging.error(err)
