codeunit 70100 CommissionCalculations
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::TabSalesInv_CommissLines, 'OnAfterValidateEvent', 'Commission (Amount)', false, false)]
    local procedure CalculateCommissionAmount(var Rec: Record TabSalesInv_CommissLines)
    begin
        Rec."Commission (Amount)" := (Rec."Fees" * Rec."Amount (Commission Base)") / 100;
    end;

    procedure ValidateCommissionLinesFields(DocType: Enum "Sales Document Type"; DocNo: Code[20]; LineNo: Integer; Type: Enum "Sales Document Type"; No: Code[20]; Description: Text[100]; Quantity: Decimal; SalespersonCode: Code[10]; SalespersonName: Text[100]; RoleDescription: Enum "Role Description"; Fees: Decimal): Boolean
    var
        CommissionLines: Record TabSalesInv_CommissLines;
    begin
        /* // >old code
        if SL.Get(CommissionLines."Document Type", CommissionLines."Document No.", CommissionLines."Line No.") then begin
            repeat
                CommissionLines.Init;
                //CommissionLines.TransferFields(SL);
                CommissionLines."Document Type" := SL."Document Type";
                CommissionLines."Document No." := SL."Document No.";
                CommissionLines."Line No." := SL."Line No.";
                CommissionLines.Type := SL.Type;
                CommissionLines."No." := SL."No.";
                CommissionLines.Description := SL.Description;
                CommissionLines.Quantity := SL.Quantity;

                CommissionLines."Salesperson Code" := Salesperson."Salesperson Code";
                CommissionLines."Salesperson Name" := Salesperson."Salesperson Name";
                CommissionLines."Role Description" := Salesperson."Role Description";
                CommissionLines.Fees := Salesperson.Fees;
                CommissionLines.Insert;
            until SL.Next() = 0; 
            <old code */

        CommissionLines.LockTable();
        if not CommissionLines.Get() then
            CommissionLines.Insert();
        CommissionLines."Document Type" := DocType;
        CommissionLines."Document No." := DocNo;
        CommissionLines."Line No." := LineNo;
        CommissionLines.Type := Type;
        CommissionLines."No." := No;
        CommissionLines.Description := Description;
        CommissionLines.Quantity := Quantity;

        CommissionLines."Salesperson Code" := SalespersonCode;
        CommissionLines."Salesperson Name" := SalespersonName;
        CommissionLines."Role Description" := RoleDescription;
        CommissionLines.Fees := Fees;
        exit(CommissionLines.Modify);
    end;
}