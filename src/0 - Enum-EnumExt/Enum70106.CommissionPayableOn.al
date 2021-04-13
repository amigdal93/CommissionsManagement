enum 70106 "Commission Payable On"
{
    Extensible = true;
    value(0; " ") { Caption = ' '; }
    value(1; "Document Entry") { Caption = 'Document Entry'; } // As soon as sales document is entered
    value(2; "Shipment") { Caption = 'Shipment'; } // When the shipment is posted, the shipped portion of the document will have payable commissions
    value(3; "Invoicing") { Caption = 'Invoicing'; } // When the invoice is posted, the commission on the invoice amount becomes payable.
    value(4; "Cash Receipt") { Caption = 'Cash Receipt'; } // The commission for the paid amount of an invoice becomes payable.
}