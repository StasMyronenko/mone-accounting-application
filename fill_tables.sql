USE AccountingMoney;

INSERT INTO Role VALUES
                     ('Admin'),
                     ('HR'),
                     ('Support'),
                     ('Programmer'),
                     ('DevOps')

INSERT INTO Personal VALUES
                         ('Andrii Sidorov', 1000000, 1),
                         ('Bohdan Svyatnenko', 6000000, 2),
                         ('Solomia Ukraine', 10000000, 3)

INSERT INTO BankAccount VALUES
                            ('93847583745', 'Main Bank Account'),
                            ('96749586930', 'Second Bank Account'),
                            ('93405847586', 'Bank Account for something')

INSERT INTO Costs VALUES
                      (30000000, '38596853456', 'for laptops', 1, 3),
                      (1234300, '54960798756', 'drags', 2, 2),
                      (85934800, '85968574638', 'smth boring', 3, 1)

INSERT INTO Product VALUES
                        ('Business training', 'Here you can waste all your money', 100000000),
                        ('English lesson', 'Lesson of English', 20000),
                        ('Tesla Company', 'Ilon Mask shocked', 99999999900)

INSERT INTO Income VALUES
                       (100000000, '83948506974', 1),
                       (99999999900,  '12345678901', 3)

INSERT INTO Income_Product VALUES
                               (1, 1),
                               (2, 3)
