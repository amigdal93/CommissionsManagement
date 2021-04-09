page 70103 PagCommissionRateSpec
{
    Caption = 'Commission Rate Spec.';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabCommissionRateSpec;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Campagn No."; Rec."Campagn No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Customer Type"; Rec."Customer Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if this commission rate is valid for a customer discount group or for a customer';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer discount group or customer number';
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies what ship-to address the commission rate is valid for';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'The salesperson receiving this commission';
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the salesperson';
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Global Dimension 1 for the commission rate';
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Global Dimension 2 for the commission rate';
                }
                field("Entity Type"; Rec."Entity Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specififes the source of the commission';
                }
                field("Entity No."; Rec."Entity No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source number of the commission';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date of the original validity period of the commission';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the end date of the original validity period of the commission';
                }
                field("Commission Type"; Rec."Commission Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the commission type for this rate';
                }
                field("Minimum Amount"; Rec."Minimum Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies minimum amount for selected salesperson';
                }
                field("Recalculate Comm. Min. Amount"; Rec."Recalculate Comm. Min. Amount")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Amount Type"; Rec."Amount Type")
                {
                    ApplicationArea = All;
                }
                field("Commission %"; Rec."Commission %")
                {
                    ApplicationArea = All;
                }
                field("Commission Rate Type"; Rec."Commission Rate Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the commission rate';
                }
                field("Generic Rate"; Rec."Generic Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the commission rate should be added to all documents regardless of the salespeson being defined on the document.';
                }
                field("Initial Rate"; Rec."Initial Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the commission rate should only be applied for the initial sale for a specific customer';
                }
                field("Maximum Commission"; Rec."Maximum Commission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the maximum allowed commission for this commission specification during a specific time period';
                }
                field("Maximum Commission Timeframe"; Rec."Maximum Commission Timeframe")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the time period the amount specified in ''Maximum Commission'' is the maximum commission amount for this commission specification';
                }
                field("Replace Commission"; Rec."Replace Commission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the commissions are added to existing commissions or replaces existing commissions for transactions. This is only valid when ''Use only most specific'' is turned off in the setup.';
                }
                field("Created by"; Rec."Created by")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Created on"; Rec."Created on")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Last Changed by"; Rec."Last Changed by")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Commission % at Last Change"; Rec."Commission % at Last Change")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Previous Commission %"; Rec."Previous Commission %")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Recalculate Commissions"; Rec."Recalculate Commissions")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Recalculate Commission Filter"; Rec."Recalculate Commission Filter")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                // 20210408 AM - to decide which field to use in future
                /*field("Recalc. Comm. Min. Amount Type"; Rec."Recalc. Comm. Min. Amount Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the Minimum Amount';
                    Visible = false;
                } */
                field("Salesperson Group"; Rec."Salesperson Group")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Salesperson Enabled"; Rec."Salesperson Enabled")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }
    }
}