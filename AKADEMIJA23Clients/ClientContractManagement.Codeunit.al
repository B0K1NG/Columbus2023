codeunit 50111 "Client Contract - Management"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, OnBeforeOnDelete, '', false, false)]
    local procedure OnBeforeOnDelete_Customer(var Customer: Record Customer)
    var
        ClientContract: Record "Client Contract";
    // CheckCustomer: Record Customer;
    begin
        // CheckCustomer.SetAutoCalcFields("Contract Count");
        // if CheckCustomer.Get(Customer."No.") then
        //     if CheckCustomer."Contract Count" <> 0 then
        //         Error('Can not delete - Customer has Contracts');


        // if CheckCustomer.Get(Customer."No.") then begin
        //     CheckCustomer.CalcFields("Contract Count");
        //     if CheckCustomer."Contract Count" <> 0 then
        //         Error('Can not delete - Customer has Contracts');
        // end;
        ClientContract.SetRange("Client Type", ClientContract."Client Type"::Customer);
        ClientContract.SetRange("Client No.", Customer."No.");
        if not ClientContract.IsEmpty then
            Error('Can not delete - Customer has Contracts');
    end;
}