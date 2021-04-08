pageextension 70101 PagExtCustomerPostingGroups extends "Customer Posting Groups"
{
    layout
    {
        addlast(content)
        {
            field(CommissionLiabilityAcc; Rec."Commission Liability Acc.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the liability account to be used when commissions are posted and accrued for later payment.';
            }
            field(CommissionExpenseAcc; Rec."Commission Expense Acc.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the expense account to be used when commissions are posted and accrued for later payment.';
            }
        }
    }
}