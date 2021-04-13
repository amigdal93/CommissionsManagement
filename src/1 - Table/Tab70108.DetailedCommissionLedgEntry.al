table 70108 "Detailed Commission Ledg.Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Comm. Ledger Entry No."; Integer)
        {
            Caption = 'Comm. Ledger Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(3; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = ',Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,Payment Discount,Payment Discount (VAT Excl.),Payment Discount (VAT Adjustment),Appln. Rounding,Correction of Remaining Amount,Payment Tolerance,Payment Discount Tolerance,Payment Tolerance (VAT Excl.),Payment Tolerance (VAT Adjustment),Payment Discount Tolerance (VAT Excl.),Payment Discount Tolerance (VAT Adjustment)';
            OptionMembers = ,"Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount","Payment Tolerance","Payment Discount Tolerance","Payment Tolerance (VAT Excl.)","Payment Tolerance (VAT Adjustment)","Payment Discount Tolerance (VAT Excl.)","Payment Discount Tolerance (VAT Adjustment)";
        }
        field(4; "Document Type"; Enum "Gen. Journal Document Type")
        {
            Caption = 'Document Type';
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(6; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(7; "Ledger Entry Amount"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Credit Amount (LCY)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Commission Ledger Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Commission Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(12; "Debit Amount (LCY)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Credit Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Debit Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Base Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Initial Entry Global Dim. 1"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Initial Entry Global Dim. 2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}