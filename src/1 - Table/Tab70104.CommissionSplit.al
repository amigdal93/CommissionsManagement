table 70104 TabCommissionSplit
{
    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(2; Type; Integer)
        {
            Caption = 'Type';
        }
        field(3; Subtype; Integer)
        {
            Caption = 'Subtype';
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = Customer."No.";
        }
        field(5; "Sub Code"; Code[20])
        {
            Caption = 'Sub Code';
        }
        field(6; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
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
        field(7; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(8; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(9; Occurence; INteger)
        {
            Caption = 'Occurence';
        }
        field(10; Split; Decimal)
        {
            Caption = 'Split';
        }
        field(11; "Salesperson Name"; Text[50])
        {
            Caption = 'Salesperson Name';
        }
        field(12; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(13; "Salesperson Enabled"; Boolean)
        {
            Caption = 'Salesperson Enabled';
        }
    }

    keys
    {
        key(Key1; "Table No.", Type, Subtype, "No.", "Sub Code", "Salesperson Code", "Start Date", "End Date", Occurence, "Location Code")
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