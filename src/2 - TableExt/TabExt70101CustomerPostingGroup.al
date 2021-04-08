tableextension 70101 TabExtCustomerPostingGroup extends "Customer Posting Group"
{
    fields
    {
        field(70100; "Commission Liability Acc."; Code[20])
        {
            Caption = 'Commission Liability Acc.';
            TableRelation = "G/L Account"."No.";
        }
        field(70101; "Commission Expense Acc."; Code[20])
        {
            Caption = 'Commission Expense Acc.';
            TableRelation = "G/L Account"."No.";
        }
    }
}