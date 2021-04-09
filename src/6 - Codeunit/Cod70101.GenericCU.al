codeunit 70101 GenericCU
{
    trigger OnRun()
    begin
    end;

    // 09042021 AM - runs the page when salesperson selection on page
    procedure OpenSalespersonListEntries(No: Code[20])
    var
        Salespersonlist: Record "Salespersons list";
    begin
        Salespersonlist.Reset();
        Salespersonlist.SetRange("Customer No.", No);
        if Salespersonlist.FindSet() then begin
            //PAGE.Run(70701, Salespersonlist);
            Salespersonlist.SetCurrentKey("Customer No.");
            Page.RunModal(Page::"Salespersons List", Salespersonlist);
        end else begin
            //PAGE.Run(70701, Salespersonlist);
            Page.RunModal(Page::"Salespersons List", Salespersonlist);
        end;
    end;
}