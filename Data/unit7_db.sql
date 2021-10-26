CREATE TABLE card_holder (
    "id" int   NOT NULL PRIMARY KEY,
    "name" varchar(100)   NOT NULL
);

CREATE TABLE "credit_card" (
    "card" varchar(20)   NOT NULL PRIMARY KEY,
    "cardholder_id" int   NOT NULL REFERENCES card_holder
);

CREATE TABLE merchant_category (
    "id" int   NOT NULL PRIMARY KEY,
    "name" varchar(12)   NOT NULL
);

CREATE TABLE merchant (
    "id" int   NOT NULL PRIMARY KEY,
    "name" varchar(100)   NOT NULL,
    "id_merchant_category" int   NOT NULL REFERENCES merchant_category
);

CREATE TABLE "transaction" (
    "id" int   NOT NULL PRIMARY KEY,
    "date" TIMESTAMP   NOT NULL,
    "amount" MONEY   NOT NULL,
    "card" varchar(20)   NOT NULL REFERENCES credit_card,
    "id_merchant" int   NOT NULL REFERENCES merchant
);