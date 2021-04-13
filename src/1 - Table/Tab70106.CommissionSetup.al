table 70106 TabCommissionSetup
{
    Caption = 'Commission Setup';
    DrillDownPageID = "PagCommissionSetup";
    LookupPageID = "PagCommissionSetup";

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Enable Commission"; Boolean)
        {
            // Activates the Commission Management functionality. You can setup everything until you are ready for processing
            Caption = 'Enable Commission';
        }
        field(3; "Commission Effective Date"; Enum "Commission Effective Date")
        {
            Caption = 'Commission Effective Date';
        }
        field(4; "Commission Payable On"; Enum "Commission Payable On")
        {
            // You can define different settings based on when commissions become payable to the salespeople.
            Caption = 'Commission Payable On';
        }
        field(5; "Min. Comm. Gross Profit %"; Decimal)
        {
            Caption = 'Min. Comm. Gross Profit %';
        }
        field(6; "Auto. Commission Post To G/L"; Boolean)
        {
            Caption = 'Auto. Commission Post To G/L';
        }
        field(7; "Use only most specific"; Boolean)
        {
            Caption = 'Use only most specific';
        }
        field(8; "Prevent Negative Commission"; Boolean)
        {
            Caption = 'Prevent Negative Commission';
        }
        field(9; "Prevent Neg. Total Commission"; Boolean)
        {
            Caption = 'Prevent Negative Total Commission';
        }
        field(10; "Calculate Commissions on"; Enum "Calculate Commissions on")
        {
            /* You can select the basis for the commission calculations. 
               Depending on the value that you select here, the commission rates will be applied to different base amounts. 
               You can define defaults here and then also override this setup on each salesperson. */
            Caption = 'Calculate Commissions on';
        }
        field(11; "Create Zero Amount LedgEntries"; Boolean)
        {
            Caption = 'Create Zero Amount LedgEntries';
        }
        /* field(12; "Calc. Commissions on"; Enum "Calculate Commissions On")
        {
            Caption = 'Calc. Commissions on';
        }
        */
        field(13; "Sales Growth Period"; Enum "Maximum Commission Timeframe")
        {
            Caption = 'Sales Growth Period';
        }
        /* field(14; "Comm. Effective Date"; Enum "Commission Effective Date")
        {
            Caption = 'Comm. Effective Date';
        } 
        field(15; "Comm. Payable On"; Enum "Commission Payable On")
        {
            Caption = 'Comm. Payable On';
        }*/
        field(16; "Initial Rate per Ship-to"; Boolean)
        {
            Caption = 'Initial Rate per Ship-to';
        }
        field(17; "Initial Rate per Entity"; Boolean)
        {
            Caption = 'Initial Rate per Entity';
        }
        field(18; "Initial Rate per Salesperson"; Boolean)
        {
            Caption = 'Initial Rate per Salesperson';
        }
        field(19; "Initial Rate per Campaign"; Boolean)
        {
            Caption = 'Initial Rate per Campaign';
        }
        field(20; "Only fully paid invoices"; Boolean)
        {
            Caption = 'Process only fully paid invoices';
        }
        field(21; "Exclude Past Due Invoices"; Boolean)
        {
            Caption = 'Exclude Past Due Invoices';
        }
        field(22; "ExcludeCust. w. Past Due Inv. "; Boolean)
        {
            Caption = 'Exclude Customers with Past Due Invoices';
        }
        field(23; "Past Due For"; DateFormula)
        {
            Caption = 'Exclude Customers with Past Due for';
        }
        field(24; "Past Due more than"; Decimal)
        {
            Caption = 'Exclude customers if Past Due more than (%)';
        }
        field(25; "Commissions by Campaigns"; Boolean)
        {
            Caption = 'Commissions by Campaigns';
        }
        field(26; "Use Manager Commissions"; Boolean)
        {
            Caption = 'Use Manager Commissions';
        }
        field(27; "Diff. Commissions for overdue"; Boolean)
        {
            Caption = 'Diff. Commissions for overdue';
        }
        field(28; "Commissions by Dimensions"; Boolean)
        {
            Caption = 'Commissions by Dimensions';
        }
        field(29; "Use Maximum Commissions"; Boolean)
        {
            Caption = 'Use Maximum Commissions';
        }
        field(30; "Use Initial Commissions"; Boolean)
        {
            Caption = 'Use Initial Commissions';
        }
        field(31; "Reason Code Invoice Paid"; Code[20])
        {
            Caption = 'Reason Code Invoice Paid';
        }
        field(32; "Include Current Document"; Boolean)
        {
            Caption = 'Include Current Document';
        }
        field(33; "Exclude Credit Memos"; Boolean)
        {
            Caption = 'Exclude Credit Memos from Commissions';
        }
        field(34; "Reason Code Recalculate"; Code[10])
        {
            Caption = 'Recalculate Adjust. Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(35; "New Email Body Report"; Integer)
        {
            Caption = 'New Email Body Report';
        }
        field(36; "New Email Body Layout"; Code[20])
        {
            Caption = 'New Email Body Layout';
            TableRelation = "Custom Report Layout".Code;

            trigger OnValidate()
            var
                CustomReportLayout: Record "Custom Report Layout";
            begin

            end;
        }
        /* field(37; "New Email Body Report Name"; Text[50])
        {
            Caption = 'New Email Body Report Name';
        }
        field(38; "New Email Body Layout Name"; Text[50])
        {
            Caption = 'New Email Body Layout Name';
        } */
        field(39; "Send Email Date Formula"; DateFormula)
        {
            Caption = 'Send Email Date Formula';
        }
        /* field(40; "Comm. Report Process by"; Enum "Comm. Report Process by")
        {
            Caption = 'Process by';
        } */
        field(41; "Comm. Report Zero Lines"; Boolean)
        {
            Caption = 'Print Zero Commission Lines';
        }
        /* field(42; "Comm. Report Aged By"; Enum "Comm. Report Aged By")
        {
            Caption = 'Aged By';
        } */
        field(43; "Commission Report Process by"; Enum "Comm. Report Process by")
        {
            Caption = 'Process by';
        }
        field(44; "Commission Report Aged By"; Enum "Comm. Report Aged By")
        {
            Caption = 'Aged By';
        }
        field(45; "Commission Report No. Periods"; Integer)
        {
            Caption = 'No. Periods';
        }
        field(46; "Commission Report Period Type"; Enum "Maximum Commission Timeframe")
        {
            Caption = 'Period Length';
        }
        field(47; "From Email Account Id"; Guid)
        {
            Caption = 'From Email Account Id';
        }
        field(48; "From Email Account Entry"; Text[50])
        {
            Caption = 'From Email Account Entry';
        }
        field(49; "Use Commission Type"; Boolean)
        {
            Caption = 'Use Commission Type';
        }
        field(50; "Use Recalculate Period"; Boolean)
        {
            Caption = 'Use Recalculate Period';
        }
        field(51; "Process Commission Doc. No. "; Code[20])
        {
            Caption = 'Process Commission Doc. No. ';
        }
        field(52; "Show Unit Cost Sales Order"; Boolean)
        {
            Caption = 'Show Unit Cost Sales Order';
        }
        field(53; "No Calculation Document Entry"; Boolean)
        {
            Caption = 'No Calculation Document Entry';
        }
        field(54; "Calculation Release Document"; Boolean)
        {
            Caption = 'Calculation During Document Release';
        }
        field(55; "Calculation Post"; Boolean)
        {
            Caption = 'Calculation before Posting';
        }
        field(56; "Commission Draw Reason Code"; Code[10])
        {
            Caption = 'Commission Draw Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(57; "Process Draw Doc. No."; Code[20])
        {
            Caption = 'Process Draw Doc. No.';
        }
        field(58; "Manager Commission Doc. No."; Code[20])
        {
            Caption = 'Manager Commission Doc. No.';
        }
        /* field(59; "Assisted Setup Status"; Enum "Assisted Setup Status")
        {
            Caption = 'Assisted Setup Status';
        } */
        field(60; "Handling Codeunit"; Integer)
        {
            Caption = 'Handling Codeunit';
        }
    }

    keys
    {
        key(Key1; Code)
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