page 70107 PagCommissionSetup
{
    Caption = 'Commission Setup';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabCommissionSetup;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Enable Commission"; Rec."Enable Commission")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Enables the commission functionality on a company level.';
                }
                field("Calculate Commissions on"; Rec."Calculate Commissions on")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Define, if commissions will be calculated based on Sales, Gross Profit or Quantity. The "Commissionable Base Amount" will be adjusted based on the setup. You can change this value at any time, however, existing commission entries - open or paid - will not be updated..';
                }
                field("Commission Effective Date"; Rec."Commission Effective Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the date that will be used to calculate the commission percentages for each transaction.';
                }
                field("Commission Payable On"; Rec."Commission Payable On")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies when commissions become payable.';
                }
                field("Reason Code Recalculate"; Rec."Reason Code Recalculate")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the reason code used by the system to post adjustment commission ledger entries for commission updates during commission recalculations.';
                }
                field("Auto. Commission Post To G/L"; Rec."Auto. Commission Post To G/L")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commission transactions are automatically posted to the general ledger.';
                }
                field("Use only most specific"; Rec."Use only most specific")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies which commissions to use for a transaction.';
                }
                field("Prevent Negative Commission"; Rec."Prevent Negative Commission")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that commissions cannot be negative on a sale.';
                }
                field("Prevent Neg. Total Commission"; Rec."Prevent Neg. Total Commission")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether credit memos will be generated for salespeople, if their credits exceed the sale.';
                }
                field("Create Zero Amount LedgEntries"; Rec."Create Zero Amount LedgEntries")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies if zero amounts will be created in commission ledger entry.';
                }
                field("Include Current Document"; Rec."Include Current Document")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the current document is included in the total sales calculation for tiered commissions.';
                }
                field("Commission Draw Reason Code"; Rec."Commission Draw Reason Code")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the reason code used to post commission draws';
                }
            }
            group("Filter Criteria")
            {
                Caption = 'Filter Criteria';
                field("Min. Comm. Gross Profit %"; Rec."Min. Comm. Gross Profit %")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the minimum gross profit that is required for commissions to calculate. If the gross profit is below this margin, salespeople do not receive commission on the transaction.';
                }
                field("Process only fully paid invoices"; Rec."Only fully paid invoices")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether any paid invoices or only fully paid invoices are commissionable.';
                }
                field("Exclude Past Due Invoices"; Rec."Exclude Past Due Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether invoices paid after the due date are commissionable.';
                }
                field("ExcludeCust. w. Past Due Inv. "; Rec."ExcludeCust. w. Past Due Inv. ")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commission is paid for customers with past due invoices.';
                }
                field("Past Due for"; Rec."Past Due for")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether invoices that are past due for more than a specific time are commissionable.';
                }
                field("Past Due more than"; Rec."Past Due more than")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether invoices are commissionable if their balance is more than a specific percentage of the outstanding amount.';
                }
                field("Exclude Credit Memos"; Rec."Exclude Credit Memos")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Exclude Credit Memos from any commission calculations.';
                }
                field("Sales Growth Period"; Rec."Sales Growth Period")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the period that sales growth is measured in.';
                }
                field("Initial Rate per Campaign"; Rec."Initial Rate per Campaign")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the rate for initial sales should check for the first sale in a campaign.';
                }
                field("Initial Rate per Ship-to"; Rec."Initial Rate per Ship-to")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the rate for intial sales should check for the first sale per ship-to location.';
                }
                field("Initial Rate per Salesperson"; Rec."Initial Rate per Salesperson")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the rate for initial sales should check for the first sale per salesperson.';
                }
                field("Initial Rate per Entity"; Rec."Initial Rate per Entity")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the rate for initial sales should check for first sale per entity.';
                }
            }
            group(Reporting)
            {
                Caption = 'Reporting';
                field("New Email Body Report"; Rec."New Email Body Report")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specify report used to define the body of the email that will be sent to the different salespeople together with their commissions report.';
                }
                field("New Email Body Layout"; Rec."New Email Body Layout")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specify layout for the report.';
                }
                field("Send Email Date Formula"; Rec."Send Email Date Formula")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies when the reports will be sent.';
                }
                field("Commission Report Process by"; Rec."Commission Report Process by")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the level of detail printed on the report that is sent to salespeople.';
                }
                field("Comm. Report Zero Lines"; Rec."Comm. Report Zero Lines")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether zero amount commission lines are included in the report.';
                }
                field("Commission Report Aged By"; Rec."Commission Report Aged By")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies aging method of the report.';
                }
                field("Commission Report No. Periods"; Rec."Commission Report No. Periods")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of periods to include in the report.';
                }
                field("Commission Report Period Type"; Rec."Commission Report Period Type")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the period length used in the report.';
                }
            }
            /* group("Commission Processing")
            {
                Caption = 'Commission Processing';
                field(MyField; FieldSource)
                {
                    ApplicationArea = All;
                    FieldPropertyName = FieldPropertyValue;
                }
            } */
            group("Performance Optimization")
            {
                Caption = 'Performance Optimization';
                field("No Calculation Document Entry"; Rec."No Calculation Document Entry")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commissions should be calculated at the time of document entry. If this is turned on, the performance of document entry will be reduced due to multiple re-calculations of commissions.';
                }
                field("Calculation Release Document"; Rec."Calculation Release Document")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commissions should be calculated at the time of the release of a document. This can only be activated when the calcalation is not peformed during document entry.';
                }
                field("Calculation before Posting"; Rec."Calculation Post")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commissions should be calculated before the document is posted. This can only be activated when the calculation is not performed during document entry..';
                }
            }
            group(Features)
            {
                Caption = 'Features';
                field("Commissions by Campaigns"; Rec."Commissions by Campaigns")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether commissions for campaigns will be used.';
                }
                field("Use Manager Commissions"; Rec."Use Manager Commissions")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether manager commissions will be used.';
                }
                field("Diff. Commissions for overdue"; Rec."Diff. Commissions for overdue")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether different commissions for overdue invoices will be used.';
                }
                field("Use Initial Commissions"; Rec."Use Initial Commissions")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether you will use different commission rates for initial sales.';
                }
                field("Commissions by Dimensions"; Rec."Commissions by Dimensions")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether you will use different commission rates based on the global dimensions.';
                }
                field("Use Maximum Commissions"; Rec."Use Maximum Commissions")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether you will limit commission payments.';
                }
                field("Use Commission Type"; Rec."Use Commission Type")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether you will use commission types.';
                }
                field("Use Recalculate Period"; Rec."Use Recalculate Period")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether you will have commission rates that should be applied to older transactions within the period.';
                }
            }
            group("General Changes")
            {
                Caption = 'General Changes';
                field("Show Unit Cost Sales Order"; Rec."Show Unit Cost Sales Order")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether the Unit Cost will be visible on the sales lines. This is useful for using Charge (Items) to adjust gross profit on the order.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Auto-Assign People")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Auto-Assign People';
                ToolTip = 'Create Salesperson Split for current Salesperson on each customer.';

                trigger OnAction()
                begin

                end;
            }
            action("Calculate Commissions for existing sales documents")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Calculate Commissions for existing sales documents';
                ToolTip = 'Calculates commissions for existing sales documents. This should only be run afteer the commission splits and commission rate setups have been completed.';

                trigger OnAction()
                begin

                end;
            }
            action("Calculate Commissions for posted sales documents")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Calculate Commissions for posted sales documents.';
                ToolTip = 'Calculates commissions for posted sales documents and creates commission journal entries to adjust postings to the new calculations. This should be run after the commission splits and commission rate setups have been completed.';

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}