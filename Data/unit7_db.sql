CREATE TABLE "Credit Card" (
    "card" varchar(20)   NOT NULL,
    "cardholder_id" int   NOT NULL,
    CONSTRAINT "pk_Credit Card" PRIMARY KEY (
        "card"
     )
);

CREATE TABLE "Card Holder" (
    "id" int   NOT NULL,
    "name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Card Holder" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Merchant" (
    "id" int   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Merchant Category" (
    "id" int   NOT NULL,
    "name" varchar(12)   NOT NULL,
    CONSTRAINT "pk_Merchant Category" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Transaction" (
    "id" int   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" MONEY   NOT NULL,
    "card" varchar(20)   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_Transaction" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Credit Card" ADD CONSTRAINT "fk_Credit Card_card" FOREIGN KEY("card")
REFERENCES "Transaction" ("card");

ALTER TABLE "Card Holder" ADD CONSTRAINT "fk_Card Holder_id" FOREIGN KEY("id")
REFERENCES "Credit Card" ("cardholder_id");

ALTER TABLE "Merchant" ADD CONSTRAINT "fk_Merchant_id" FOREIGN KEY("id")
REFERENCES "Transaction" ("id_merchant");

ALTER TABLE "Merchant Category" ADD CONSTRAINT "fk_Merchant Category_id" FOREIGN KEY("id")
REFERENCES "Merchant" ("id_merchant_category");

