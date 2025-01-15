/// <summary>
/// PageExtension "KNH CustomerList" (ID 50100) extends Record Customer.
/// </summary>
pageextension 51900 "KNH Customer List" extends "Customer List"
{
    trigger OnOpenPage()
    var
        Words: List of [Text];
        Lines: List of [Text];
        WordPointer: Integer;
        Builder: TextBuilder;
    begin
        Words := GetText().Split(' ');
        for WordPointer := 1 to Words.Count() do begin
            if Builder.Length() > 0 then
                Builder.Append(' ');
            Builder.Append(Words.Get(WordPointer));
            if Builder.Length() > 0 then begin
                Lines.Add(Builder.ToText());
                Clear(Builder);
            end;
        end;
        if Builder.Length() > 0 then
            Lines.Add(Builder.ToText());
        Message('%1\%2\%3', Lines.Get(1), Lines.Get(2), Lines.Get(3));
    end;

    local procedure GetText(): Text
    begin
        exit('Now updated for the 2022 wave 2 release. A companion book for implementing Microsoft Dynamics 365 Business Central. Was updated for the 2022 wave 1 release. A companion book for implementing Microsoft Dynamics 365 Business Central.');
    end;
}
