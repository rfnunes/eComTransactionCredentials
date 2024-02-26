# Distributed system to generate and validate transaction credentials for eCommerce

Solution for the proposed design problem

## Logical Diagram
![](Diagrams%2FLogicalDiagram.png)

- There's a common database for every region with PCI related data and a a transaction counter table.
- The generate component has a cache containing the PCI related data relative to the region where it resides.
- The validate's component cache, besides the PCI related data has the not yet validated transaction's counter, held for the validity's lifespan.

## Sequence diagrams

- Generate
![](Diagrams%2FSequenceDiagramGenerate.png)



## Swagger specification
- [eComTransactionCredentials.yaml](eComTransactionCredentials.yaml)

## Data Model
![](Diagrams%2FDatamodel.png)
