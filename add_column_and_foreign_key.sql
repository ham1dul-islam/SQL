ALTER TABLE public."Contract"
ADD COLUMN contract_po_or_req VARCHAR(36); -- Assuming the primary key in Contract_PO_or_Req is an integer. Adjust the data type if it's different.

ALTER TABLE public."Contract"
ADD CONSTRAINT fk_contract_po_or_req
FOREIGN KEY (contract_po_or_req)
REFERENCES public."Contract_PO_or_Req"(id); -- Replace 'id' with the actual primary key column name in Contract_PO_or_Req
