enum 70105 "Commission Effective Date"
{
    value(0; "Date Entered") { Caption = 'Date Entered'; } // The work date the sales transaction is entered
    value(1; "Order Date") { Caption = 'Order Date'; } // The date the order was placed. This is the “Order Date” on the sales document.
    value(2; "Shipment Date") { Caption = 'Shipment Date'; } // The date the order will be shipped. This is based on the Shipment Date field on the sales document.
    value(3; "Invoice Date") { Caption = 'Invoice Date'; } // The date the document will be posted. This is based on the “Posting Date” field on the sales document.
    value(4; "Due Date") { Caption = 'Due Date'; } // The commission rates will be determined based on the Due Date of the document.
    value(5; "Date Paid") { Caption = 'Date Paid'; } // The commissions rates will be determined based on the actual date the invoice is paid. Initially, the due date will be used to determine the commission rates, which then will be adjusted to different rates when the invoice is paid. This can only be used when Commission Payable On is set to Cash Receipt
}