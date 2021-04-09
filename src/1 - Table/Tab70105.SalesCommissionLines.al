table 70106 TabSalesCommissionLines
{
    Caption = 'Sales Commission Lines';

    fields
    {
        /* field(1; "Document Class"; Option)
        {
            Caption = 'Document Class';
        } */
        field(2; "Document Type"; Enum "Sales Document Type")
        {
            Caption = 'Document Type';
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
        field(5; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(6; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(9; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(10; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
        }
        field(11; "Salesperson Code"; Code[10])
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
        field(12; "Salesperson Name"; Text[50])
        {
            Caption = 'Salesperson Name';
            Editable = false;
        }
        /* field(13; "Entity"; Option)
        {
            Caption = 'Entity';
        } */
        field(14; "Entity Type"; Enum "Sales Line Type")
        {
            Caption = 'Entity Type';
        }
        /* field(15; "Entity Subtype"; Option)
        {
            Caption = 'Entity Subtype';
        } */
        field(16; "Entity No."; Code[20])
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
        field(17; "Document Line Type"; Enum "Sales Line Type")
        {
            Caption = 'Document Line Type';
        }
        field(18; "Doc. Line Type No."; Code[20])
        {
            Caption = 'Doc. Line Type No.';
        }
        field(19; "Entity No. 2"; Code[20])
        {
            Caption = 'Entity No. 2';
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
        field(20; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(21; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(22; "Effective Date"; Date)
        {
            Caption = 'Effective Date';
        }
        field(23; "Document Entered"; DateTime)
        {
            Caption = 'Document Entered';
        }
        field(24; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(25; "Shipped / Received Date"; Date)
        {
            Caption = 'Shipped / Received Date';
        }
        field(26; "Invoice Posting Date"; Date)
        {
            Caption = 'Invoice Posting Date';
        }
        field(27; "Invoice Due Date"; Date)
        {
            Caption = 'Invoice Due Date';
        }
        field(28; "Commission Rate"; Decimal)
        {
            Caption = 'Commission Rate';
        }
        field(29; "System-Created"; Boolean)
        {
            Caption = 'System-Created';
        }
        field(30; "Entered/Changed by"; Code[20])
        {
            Caption = 'Entered/Changed by';
        }
        field(31; "System Commission %"; Decimal)
        {
            Caption = 'System Commission %';
        }
        field(32; "Date Invoice Paid"; Date)
        {
            Caption = 'Date Invoice Paid';
        }
        field(33; "Commission Type"; Code[20])
        {
            Caption = 'Commission Type';
        }
        field(34; "Replace Commission"; Boolean)
        {
            Caption = 'Replace Commission';
        }
        field(35; "Commission Record Id"; RecordId)
        {
            Caption = 'Commission Record Id';
        }
        field(36; "Base Commission %"; Decimal)
        {
            Caption = 'Base Commission %';
        }
        field(37; "Base %"; Decimal)
        {
            Caption = 'Base %';
        }
        field(38; "Commissionable Amount"; Decimal)
        {
            Caption = 'Commissionable Amount';
        }
        field(39; "Line Cost"; Decimal)
        {
            Caption = 'Line Cost';
        }
        field(40; "Line Amount"; Decimal)
        {
            Caption = 'Line Amount';
        }
        field(41; "Commission Amount"; Decimal)
        {
            Caption = 'Commission Amount';
        }
        field(42; "Commission Amount (Actual)"; Decimal)
        {
            Caption = 'Commission Amount (Actual)';
        }
        field(43; "Amount Type"; Enum "Amount Type")
        {
            Caption = 'Amount Type';
        }
        /* field(44; "Commission Base Amount"; Option)
        {
            Caption = 'Commission Base Amount';
        } */
        field(45; "Amount Date Calculation"; DateFormula)
        {
            Caption = 'Amount Date Calculation';
        }
        /* field(46; "Salesperson Amount Type"; Option)
        {
            Caption = 'Salesperson Amount Type';
        } */
        field(47; "Minimum Amount"; Decimal)
        {
            Caption = 'Minimum Amount';
        }
        field(48; "Line Discount % "; Decimal)
        {
            Caption = 'Line Discount % ';
        }
        field(49; "Salesperson Group"; Code[20])
        {
            Caption = 'Salesperson Group';
        }
        /* field(50; "Minimum Amount Type"; Option)
        {
            Caption = 'Minimum Amount Type';
        } */
        field(51; "Commission Rate Type"; Enum "Commission Rate Type")
        {
            Caption = 'Salesperson Group';
        }
        field(52; "Maximum Commission Limit"; Boolean)
        {
            Caption = 'Maximum Commission Limit';
        }
        field(53; "Commission Quantity"; Decimal)
        {
            Caption = 'Commission Quantity';
        }
        field(54; "Salesperson Enabled"; Boolean)
        {
            Caption = 'Salesperson Enabled';
        }
        field(55; "Line Cost (Actual)"; Decimal)
        {
            Caption = 'Line Cost';
        }
        field(56; "Line Amount (Actual)"; Decimal)
        {
            Caption = 'Line Amount';
        }
        field(57; "Commissionable Amount (Actual)"; Decimal)
        {
            Caption = 'Commissionable Amount (Actual)';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }//"Document Class"
    }
}