// PCI Table
Table card_holder {
  id long [primary key]
  pan varchar(16)
  expiricy_date timestamp

  Indexes {
    pan [unique]
  }
}

Table transaction {
  id long [primary key]
  credentials varchar(100)
  amount numeric
  merchant varchar(256)
  pan long [ref: > card_holder.id]

  Indexes {
    credentials [unique]
  }
}

Table transaction_counter {
  id long [primary key]
  transaction long
  issued boolean

  Indexes {
    (transaction, issued)
  }
}

Ref: transaction_counter.transaction < transaction.id