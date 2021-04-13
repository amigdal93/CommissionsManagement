table 70107 "Commission Ledger Entry"
{
    Caption = 'Commission Ledger Entry';
    DrillDownPageID = "Commission Ledger Entries";
    LookupPageID = "Commission Ledger Entries";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Doc. Line Description"; Text[100])
        {
            Caption = 'Doc. Line Description';
        }
        field(5; "Sales Shipment Quantity"; Decimal)
        {
            Caption = 'Sales Shipment Quantity';
            DecimalPlaces = 0 : 5;
            AutoFormatType = 1;
        }
        field(6; "Commission Quantity"; Decimal)
        {
            Caption = 'Commission Quantity';
            DecimalPlaces = 0 : 5;
            AutoFormatType = 1;
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(8; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }
        field(9; "Ship-to Code"; Code[20])
        {
            Caption = 'Ship-to Code';
            TableRelation = Customer."Ship-to Code";
        }
        field(10; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = "Sales Header"."Sell-to Customer No.";
        }
        field(11; "Sell-to Customer Name"; Text[100])
        {
            Caption = 'Sell-to Customer Name';
            TableRelation = "Sales Header"."Sell-to Customer Name";
        }
        field(12; "Ship-to Name"; Text[100])
        {
            Caption = 'Ship-to Name';
            TableRelation = "Sales Header"."Ship-to Name";
        }
        field(13; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = "Sales Header"."Bill-to Customer No.";
        }
        field(14; "Bill-to Name"; Text[100])
        {
            Caption = 'Bill-to Name';
            TableRelation = "Sales Header"."Bill-to Name";
        }
        field(15; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson code';
            TableRelation = "Salesperson/Purchaser".Code;

            trigger OnValidate()
            var
                Salesperson: Record "Salesperson/Purchaser";
            begin
                Salesperson.Reset();
                Salesperson.SetRange(Code, "Salesperson Code");
                if Salesperson.FindSet() then begin
                    "Salesperson Name" := Salesperson.Name;
                    Salesperson.Modify();
                end;
            end;
        }
        field(16; "Salesperson Name"; Text[50])
        {
            Caption = 'Salesperson Name';
            Editable = false;
        }
        /* field(25; "Entity"; Option)
        {
            Caption = 'Entity';
        } */
        field(17; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(18; "Entity Type"; Enum "Sales Line Type")
        {
            Caption = 'Entity Type';
        }
        field(19; "Entity No."; Code[20])
        {
            Caption = 'Entity No.';
            TableRelation = IF ("Entity Type" = CONST(" ")) "Standard Text"
            ELSE
            IF ("Entity Type" = CONST("G/L Account"))
                "G/L Account" WHERE("Direct Posting" = CONST(true), "Account Type" = CONST(Posting), Blocked = CONST(false))
            ELSE
            IF ("Entity Type" = CONST("G/L Account"))
                "G/L Account"
            ELSE
            IF ("Entity Type" = CONST(Resource)) Resource
            ELSE
            IF ("Entity Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Entity Type" = CONST("Charge (Item)")) "Item Charge"
            ELSE
            IF ("Entity Type" = CONST(Item)) Item WHERE(Blocked = CONST(false),
                "Sales Blocked" = CONST(false))
            ELSE
            IF ("Entity Type" = CONST(Item)) Item WHERE(Blocked = CONST(false));
            ValidateTableRelation = false;
        }
        field(20; "Applied Entry No."; Integer)
        {
            Caption = 'Applied Entry No.';
        }
        field(21; "Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(22; "Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(23; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
        }
        field(24; "G/L Transaction No."; Integer)
        {
            Caption = 'G/L Transaction No.';
        }
        field(25; "Cust. Ledger Entry No."; Integer)
        {
            Caption = 'Cust. Ledger Entry No. ';
        }
        field(26; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type';
        }
        field(27; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        /* field(28; "Document Line Type"; Enum "Document Line Type")
        {
            Caption = 'Document Line Type';
        } */
        field(29; "Document Entered"; DateTime)
        {
            Caption = 'Document Entered';
        }
        field(30; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";

            trigger OnLookup()
            begin
                ShowDimensions();
            end;
        }
        field(31; "Purchase Invoice No."; Code[10])
        {
            Caption = 'Purchase Invoice No.';
        }
        field(32; "Commission Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Commission Amount" WHERE("Ledger Entry Amount" = CONST(true),
                                                                          "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                          "Posting Date" = FIELD("Date Filter")));
            Caption = 'Commission Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Base Amount" WHERE("Ledger Entry Amount" = CONST(true),
                                                                          "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                          "Posting Date" = FIELD("Date Filter")));

            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Debit Amount" WHERE("Ledger Entry Amount" = CONST(true),
                                                                                  "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                                  "Posting Date" = FIELD("Date Filter")));
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Credit Amount" WHERE("Ledger Entry Amount" = CONST(true),
                                                                                   "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                                   "Posting Date" = FIELD("Date Filter")));
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "Debit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Debit Amount (LCY)" WHERE("Ledger Entry Amount" = CONST(true),
                                                                                        "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                                        "Posting Date" = FIELD("Date Filter")));
            Caption = 'Debit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Credit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Commission Ledg.Entry"."Credit Amount (LCY)" WHERE("Ledger Entry Amount" = CONST(true),
                                                                                         "Commission Ledger Entry No." = FIELD("Entry No."),
                                                                                         "Posting Date" = FIELD("Date Filter")));
            Caption = 'Credit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Doc. Line Type No."; Code[20])
        {
            Caption = 'Doc. Line Type No.';
        }
        field(39; "Commissionable"; Boolean)
        {
            Caption = 'Commissionable';
        }
        field(40; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(41; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(42; "Effective Date"; Date)
        {
            Caption = 'Effective Date';
        }
        field(43; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(44; "Shipped / Received Date"; Date)
        {
            Caption = 'Shipped / Received Date';
        }
        field(45; "Invoice Posting Date"; Date)
        {
            Caption = 'Invoice Posting Date';
        }
        field(46; "Invoice Due Date"; Date)
        {
            Caption = 'Invoice Due Date';
        }
        field(47; "Commission %"; Decimal)
        {
            Caption = 'Commission %';
        }
        field(48; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key9; "Document No.", "Document Type", "Document Line No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", "Posting Date", "Document No.")
        {
        }
    }

    var
        GLSetup: Record "General Ledger Setup";
        GLSetupRead: Boolean;

    local procedure GetCurrencyCode(): Code[10]
    begin
        if not GLSetupRead then begin
            GLSetup.Get();
            GLSetupRead := true;
        end;
        exit(GLSetup."Additional Reporting Currency");
    end;

    procedure ShowDoc(): Boolean
    var
        SalesInvoiceHdr: Record "Sales Invoice Header";
        SalesCrMemoHdr: Record "Sales Cr.Memo Header";
        ServiceInvoiceHeader: Record "Service Invoice Header";
        ServiceCrMemoHeader: Record "Service Cr.Memo Header";
        IssuedFinChargeMemoHeader: Record "Issued Fin. Charge Memo Header";
        IssuedReminderHeader: Record "Issued Reminder Header";
        IsHandled: Boolean;
        IsPageOpened: Boolean;
    begin
        IsHandled := false;
        if IsHandled then
            exit(IsPageOpened);

        case "Document Type" of
            "Document Type"::Invoice:
                begin
                    if SalesInvoiceHdr.Get("Document No.") then begin
                        PAGE.Run(PAGE::"Posted Sales Invoice", SalesInvoiceHdr);
                        exit(true);
                    end;
                    if ServiceInvoiceHeader.Get("Document No.") then begin
                        PAGE.Run(PAGE::"Posted Service Invoice", ServiceInvoiceHeader);
                        exit(true);
                    end;
                end;
            "Document Type"::"Credit Memo":
                begin
                    if SalesCrMemoHdr.Get("Document No.") then begin
                        PAGE.Run(PAGE::"Posted Sales Credit Memo", SalesCrMemoHdr);
                        exit(true);
                    end;
                    if ServiceCrMemoHeader.Get("Document No.") then begin
                        PAGE.Run(PAGE::"Posted Service Credit Memo", ServiceCrMemoHeader);
                        exit(true);
                    end;
                end;
            "Document Type"::"Finance Charge Memo":
                if IssuedFinChargeMemoHeader.Get("Document No.") then begin
                    PAGE.Run(PAGE::"Issued Finance Charge Memo", IssuedFinChargeMemoHeader);
                    exit(true);
                end;
            "Document Type"::Reminder:
                if IssuedReminderHeader.Get("Document No.") then begin
                    PAGE.Run(PAGE::"Issued Reminder", IssuedReminderHeader);
                    exit(true);
                end;
        end;
    end;

    procedure ShowPostedDocAttachment()
    var
        SalesInvoiceHdr: Record "Sales Invoice Header";
        SalesCrMemoHdr: Record "Sales Cr.Memo Header";
    begin
        case "Document Type" of
            "Document Type"::Invoice:
                if SalesInvoiceHdr.Get("Document No.") then
                    OpenDocumentAttachmentDetails(SalesInvoiceHdr);
            "Document Type"::"Credit Memo":
                if SalesCrMemoHdr.Get("Document No.") then
                    OpenDocumentAttachmentDetails(SalesCrMemoHdr);
        end;
    end;

    local procedure OpenDocumentAttachmentDetails("Record": Variant)
    var
        DocumentAttachmentDetails: Page "Document Attachment Details";
        RecRef: RecordRef;
    begin
        RecRef.GetTable(Record);
        DocumentAttachmentDetails.OpenForRecRef(RecRef);
        DocumentAttachmentDetails.RunModal;
    end;

    procedure GetLastEntryNo(): Integer;
    var
        FindRecordManagement: Codeunit "Find Record Management";
    begin
        exit(FindRecordManagement.GetLastEntryIntFieldValue(Rec, FieldNo("Entry No.")))
    end;

    procedure HasPostedDocAttachment(): Boolean
    var
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesInvoiceHdr: Record "Sales Invoice Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesCrMemoHdr: Record "Sales Cr.Memo Header";
        DocumentAttachment: Record "Document Attachment";
    begin
        case "Document Type" of
            "Document Type"::Invoice:
                if SalesInvoiceHdr.Get("Document No.") then
                    exit(DocumentAttachment.HasPostedDocumentAttachment(SalesInvoiceHdr));
            "Document Type"::"Credit Memo":
                if SalesCrMemoHdr.Get("Document No.") then
                    exit(DocumentAttachment.HasPostedDocumentAttachment(SalesCrMemoHdr));
        end;
    end;

    procedure DrillDownOnEntries(var DtldCommLedgEntry: Record "Detailed Commission Ledg.Entry")
    var
        CommLedgEntry: Record "Commission Ledger Entry";
        DrillDownPageID: Integer;
    begin
        CommLedgEntry.Reset();
        DtldCommLedgEntry.CopyFilter("Customer No.", CommLedgEntry."Customer No.");
        //ntry.CopyFilter("Currency Code", CommLedgEntry."Currency Code");
        DtldCommLedgEntry.CopyFilter("Initial Entry Global Dim. 1", CommLedgEntry."Global Dimension 1 Code");
        DtldCommLedgEntry.CopyFilter("Initial Entry Global Dim. 2", CommLedgEntry."Global Dimension 2 Code");
        //DtldCustLedgEntry.CopyFilter("Initial Entry Due Date", CommLedgEntry."Due Date");
        CommLedgEntry.SetCurrentKey("Customer No.", "Posting Date");
        //CommLedgEntry.SetRange(Open, true);
        PAGE.Run(DrillDownPageID, CommLedgEntry);
    end;

    procedure DrillDownOnOverdueEntries(var DtldCommLedgEntry: Record "Detailed Commission Ledg.Entry")
    var
        CommLedgEntry: Record "Commission Ledger Entry";
        DrillDownPageID: Integer;
    begin
        CommLedgEntry.Reset();
        DtldCommLedgEntry.CopyFilter("Customer No.", CommLedgEntry."Customer No.");
        //DtldCommLedgEntry.CopyFilter("Currency Code", CommLedgEntry."Currency Code");
        DtldCommLedgEntry.CopyFilter("Initial Entry Global Dim. 1", CommLedgEntry."Global Dimension 1 Code");
        DtldCommLedgEntry.CopyFilter("Initial Entry Global Dim. 2", CommLedgEntry."Global Dimension 2 Code");
        CommLedgEntry.SetCurrentKey("Customer No.", "Posting Date");
        CommLedgEntry.SetFilter("Date Filter", '<%1', Today);
        //CommLedgEntry.SetFilter("Due Date", '<%1', Today);
        //CommLedgEntry.SetFilter("Remaining Amount", '<>%1', 0);
        PAGE.Run(DrillDownPageID, CommLedgEntry);
    end;

    procedure ShowDimensions()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID", StrSubstNo('%1 %2', TableCaption, "Entry No."));
    end;

    /*     procedure SetStyle() Style: Text
        var
            IsHandled: Boolean;
        begin
            if IsHandled Then
                exit(Style);

            if Open then begin
                if WorkDate > "Due Date" then
                    exit('Unfavorable')
            end else
                if "Closed at Date" > "Due Date" then
                    exit('Attention');
            exit('');
        end; */

    procedure CopyFromGenJnlLine(GenJnlLine: Record "Gen. Journal Line")
    begin
        "Customer No." := GenJnlLine."Account No.";
        "Posting Date" := GenJnlLine."Posting Date";
        //"Document Date" := GenJnlLine."Document Date";
        "Document Type" := GenJnlLine."Document Type";
        "Document No." := GenJnlLine."Document No.";
        /* "External Document No." := GenJnlLine."External Document No.";
        Description := GenJnlLine.Description;
        "Currency Code" := GenJnlLine."Currency Code";
        "Sales (LCY)" := GenJnlLine."Sales/Purch. (LCY)";
        "Profit (LCY)" := GenJnlLine."Profit (LCY)";
        "Inv. Discount (LCY)" := GenJnlLine."Inv. Discount (LCY)"; */
        "Sell-to Customer No." := GenJnlLine."Sell-to/Buy-from No.";
        "Global Dimension 1 Code" := GenJnlLine."Shortcut Dimension 1 Code";
        "Global Dimension 2 Code" := GenJnlLine."Shortcut Dimension 2 Code";
        "Dimension Set ID" := GenJnlLine."Dimension Set ID";
        "Salesperson Code" := GenJnlLine."Salespers./Purch. Code";
        "Source Code" := GenJnlLine."Source Code";/* 
        "On Hold" := GenJnlLine."On Hold";
        "Applies-to Doc. Type" := GenJnlLine."Applies-to Doc. Type";
        "Applies-to Doc. No." := GenJnlLine."Applies-to Doc. No.";
        "Due Date" := GenJnlLine."Due Date";
        "Pmt. Discount Date" := GenJnlLine."Pmt. Discount Date";
        "Applies-to ID" := GenJnlLine."Applies-to ID";
        "Journal Batch Name" := GenJnlLine."Journal Batch Name";
        "Reason Code" := GenJnlLine."Reason Code";
        "Direct Debit Mandate ID" := GenJnlLine."Direct Debit Mandate ID";
        "User ID" := UserId;
        "Bal. Account Type" := GenJnlLine."Bal. Account Type";
        "Bal. Account No." := GenJnlLine."Bal. Account No.";
        "No. Series" := GenJnlLine."Posting No. Series";
        "IC Partner Code" := GenJnlLine."IC Partner Code";
        Prepayment := GenJnlLine.Prepayment;
        "Recipient Bank Account" := GenJnlLine."Recipient Bank Account";
        "Message to Recipient" := GenJnlLine."Message to Recipient";
        "Applies-to Ext. Doc. No." := GenJnlLine."Applies-to Ext. Doc. No.";
        "Payment Method Code" := GenJnlLine."Payment Method Code";
        "Exported to Payment File" := GenJnlLine."Exported to Payment File"; */
    end;
    /* 
        procedure CopyFromCVLedgEntryBuffer(var CVLedgerEntryBuffer: Record "CV Ledger Entry Buffer")
        begin
            TransferFields(CVLedgerEntryBuffer);
            Amount := CVLedgerEntryBuffer.Amount;
            "Amount (LCY)" := CVLedgerEntryBuffer."Amount (LCY)";
            "Remaining Amount" := CVLedgerEntryBuffer."Remaining Amount";
            "Remaining Amt. (LCY)" := CVLedgerEntryBuffer."Remaining Amt. (LCY)";
            "Original Amount" := CVLedgerEntryBuffer."Original Amount";
            "Original Amt. (LCY)" := CVLedgerEntryBuffer."Original Amt. (LCY)";
        end;

           procedure RecalculateAmounts(FromCurrencyCode: Code[10]; ToCurrencyCode: Code[10]; PostingDate: Date)
           var
               CurrExchRate: Record "Currency Exchange Rate";
           begin
               if ToCurrencyCode = FromCurrencyCode then
                   exit;

               "Remaining Amount" :=
                 CurrExchRate.ExchangeAmount("Remaining Amount", FromCurrencyCode, ToCurrencyCode, PostingDate);
               "Remaining Pmt. Disc. Possible" :=
                 CurrExchRate.ExchangeAmount("Remaining Pmt. Disc. Possible", FromCurrencyCode, ToCurrencyCode, PostingDate);
               "Accepted Payment Tolerance" :=
                 CurrExchRate.ExchangeAmount("Accepted Payment Tolerance", FromCurrencyCode, ToCurrencyCode, PostingDate);
               "Amount to Apply" :=
                 CurrExchRate.ExchangeAmount("Amount to Apply", FromCurrencyCode, ToCurrencyCode, PostingDate);
           end;

               procedure GetUnitCostLCY(): Decimal
                   begin
                       if "Commission Quantity" = 0 then
                           exit("Cost Amount (Actual)");

                       exit(Round("Cost Amount (Actual)" / Quantity, 0.00001));
                   end; 


           procedure CalculateRemInventoryValue(ItemLedgEntryNo: Integer; ItemLedgEntryQty: Decimal; RemQty: Decimal; IncludeExpectedCost: Boolean; PostingDate: Date): Decimal
           var
               ValueEntry: Record "Value Entry";
               AdjustedCost: Decimal;
               TotalQty: Decimal;
           begin
               ValueEntry.SetCurrentKey("Item Ledger Entry No.");
               ValueEntry.SetRange("Item Ledger Entry No.", ItemLedgEntryNo);
               ValueEntry.SetFilter("Valuation Date", '<=%1', PostingDate);
               if not IncludeExpectedCost then
                   ValueEntry.SetRange("Expected Cost", false);
               if ValueEntry.FindSet then
                   repeat
                       if ValueEntry."Entry Type" = ValueEntry."Entry Type"::Revaluation then
                           TotalQty := ValueEntry."Valued Quantity"
                       else
                           TotalQty := ItemLedgEntryQty;
                       if ValueEntry."Entry Type" <> ValueEntry."Entry Type"::Rounding then
                           if IncludeExpectedCost then
                               AdjustedCost += RemQty / TotalQty * (ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)")
                           else
                               AdjustedCost += RemQty / TotalQty * ValueEntry."Cost Amount (Actual)";
                   until ValueEntry.Next = 0;
               exit(AdjustedCost);
           end;*/
}