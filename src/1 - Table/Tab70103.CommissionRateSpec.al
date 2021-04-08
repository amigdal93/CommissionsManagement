table 70103 TabCommissionRateSpec
{
    fields
    {
        field(1; "Campagn No."; Code[20])
        {
            Caption = 'Campagn No.';
        }
        field(2; "Customer Type"; Enum "Customer Type")
        {
            Caption = 'Customer Type';
        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(4; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
        }
        field(5; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
        }
        field(6; "Entity Type"; Enum "Sales Line Type")
        {
            Caption = 'Entity Type';

        }
        field(7; "Entity No."; Code[20])
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
        field(8; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(9; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(10; "Commission %"; Decimal)
        {
            Caption = 'Commission %';
        }
        field(11; "Created by"; Code[20])
        {
            Caption = 'Created by';
        }
        field(12; "Created on"; DateTime)
        {
            Caption = 'Created on';
        }
        field(13; "Last Changed by"; Code[20])
        {
            Caption = 'Last Changed by';
        }
        field(14; "Commission % at Last Change"; Decimal)
        {
            Caption = 'Commission % at Last Change';
        }
        field(15; "Previous Commission %"; Decimal)
        {
            Caption = 'Previous Commission %';
        }
        field(16; "Salesperson Name"; Text[50])
        {
            Caption = 'Salesperson Name';
            TableRelation = "Salesperson/Purchaser".Name;
        }
        field(17; "Generic Rate"; Boolean)
        {
            Caption = 'Generic Rate';
        }
        field(18; "Initial Rate"; Boolean)
        {
            Caption = 'Initial Rate';
        }
        field(19; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value"."Dimension Code";
        }
        field(20; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value"."Dimension Code";
        }
        field(21; "Commission Type"; Code[20])
        {
            Caption = 'Commission Type';
        }
        field(22; "Replace Commission"; Boolean)
        {
            Caption = 'Replace Commission';
        }
        field(23; "Recalculate Commissions"; Boolean)
        {
            Caption = 'Recalculate Commissions';
        }
        field(24; "Recalculate Commission Filter"; Blob)
        {
            Caption = 'Recalculate Commission Filter';
        }
        field(25; "Recalculate Comm. Min. Amount"; Decimal)
        {
            Caption = 'Recalculate Comm. Min. Amount';
        }
        field(26; "Recalc. Comm. Min. Amount Type"; Enum "Amount Type")
        {
            Caption = 'Recalc. Comm. Min. Amount Type';
        }
        // 20210408 AM - to decide which field to use in future
        /*field(27; "Amount Type"; Enum "Amount Type")
        {
            Caption = 'Amount Type';
        }*/
        field(28; "Minimum Amount"; Decimal)
        {
            Caption = 'Minimum Amount';
        }
        field(29; "Salesperson Group"; Code[10])
        {
            Caption = 'Salesperson Group';
        }
        field(30; "Maximum Commission"; Decimal)
        {
            Caption = 'Maximum Commission';
        }
        field(31; "Maximum Commission Time"; Enum "Maximum Commission Timeframe")
        {
            Caption = 'Maximum Commission Time';
        }
        field(32; "Commission Rate Type"; Enum "Commission Rate Type")
        {
            Caption = 'Commission Rate Type';
        }
        field(33; "Salesperson Enabled"; Boolean)
        {
            Caption = 'Salesperson Enabled';
        }
    }

    keys
    {
        key(Key1; "Campagn No.", "Customer Type", "Customer No.", "Ship-to Code", "Salesperson Code", "Entity Type", "Entity No.", "Starting Date", "Initial Rate", "Global Dimension 1 Code", "Global Dimension 2 Code", "Recalc. Comm. Min. Amount Type", "Minimum Amount")
        {
            Clustered = true;
        }
    }

    var

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