ALTER TABLE Contracts
ADD COLUMN contract_po_or_req INTEGER; -- Assuming the primary key in Contract_PO_or_Req is an integer. Adjust the data type if it's different.

ALTER TABLE Contracts
ADD CONSTRAINT fk_contract_po_or_req
FOREIGN KEY (contract_po_or_req)
REFERENCES Contract_PO_or_Req(id); -- Replace 'id' with the actual primary key column name in Contract_PO_or_Req
