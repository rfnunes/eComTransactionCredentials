# eComTransactionCredentials

This project contains the following artifacts

## Logical Diagram
![Generate](Diagrams%2FLogicalDiagram.png)

- There's a common database for every region with PCI and PII related tables and a a transaction counter table.
- The generate component has a cache containing the PCI and PII related data relative to the region where it resides.
- The validate's component cache, besides the PCI and PII related data has the not yet validated transaction's counter, held for the validity's lifespan.


## Sequence diagram

## Swagger specification
- [eComTransactionCredentials.yaml](eComTransactionCredentials.yaml)

## Datamodel