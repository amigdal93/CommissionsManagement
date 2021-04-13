enum 70112 "Type Filter"
{
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; "Item") { Caption = 'Item'; } // The rate applies to a specific item
    value(2; "Resource") { Caption = 'Resource'; } // The rate applies to a specific resource
    value(3; "GL Account") { Caption = 'GL Account'; } // The rate applies to a specific GL account
    value(4; "All Items") { Caption = 'GL Account'; } // The rate applies to all lines of type Item
    value(5; "All Resources") { Caption = 'GL Account'; } // The rate applies to all lines of type Resource
    value(6; "All GL Accounts") { Caption = 'GL Account'; } // The rate applies to all lines of type GL Account
    value(7; "All") { Caption = 'GL Account'; } // The rate applies to all lines of types Item, Resource and GL Account
}