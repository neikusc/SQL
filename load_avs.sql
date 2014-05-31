CREATE TABLE offers (
  offer int,
  category int,
  quantity int,
  company int,
  offervalue real,
  brand int  
);

CREATE TABLE trainHistory (
  id integer,
  chain integer,
  offer integer,
  market integer,
  repeattrips integer,
  repeater char,
  offerdate date
);

CREATE TABLE testHistory (
  id integer,
  chain integer,
  offer integer,
  market integer,
  offerdate date
);

CREATE TABLE transactions (
  id integer,
  chain integer,
  dept integer,
  category integer,
  company integer,
  brand integer,
  date date,
  productsize integer,
  productmeasure char,
  purchaseQuantity integer,
  purchaseAmount real
);

LOAD DATA LOCAL INFILE '/home/neik/Kaggle/AcquireValuedShoppers/CSV/transactions.csv' INTO TABLE transactions
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (id, chain, dept, category, company, brand, date, productsize, productmeasure, purchaseQuantity, purchaseAmount);

LOAD DATA LOCAL INFILE '/home/neik/Kaggle/AcquireValuedShoppers/CSV/offers.csv' INTO TABLE offers
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (offer, category, quantity, company, offervalue, brand);

LOAD DATA LOCAL INFILE '/home/neik/Kaggle/AcquireValuedShoppers/CSV/trainHistory.csv' INTO TABLE trainHistory
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (id, chain, offer, market, repeattrips, repeater, offerdate);

LOAD DATA LOCAL INFILE '/home/neik/Kaggle/AcquireValuedShoppers/CSV/testHistory.csv' INTO TABLE testHistory
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  (id, chain, offer, market, offerdate);
