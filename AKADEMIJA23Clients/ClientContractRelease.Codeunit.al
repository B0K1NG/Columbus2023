codeunit 50110 "Client Contract - Release"
{
    TableNo = "Client Contract";

    trigger OnRun()
    begin
        OnBeforeReleaseContract(Rec);
        // papildomi patikrinimai, ar galime pateikti

        Rec."Contract Status" := Rec."Contract Status"::Released;
        Rec.Modify(false);

        OnAfterReleaseContract(Rec);
    end;

    procedure OpenContract(var ClientContract: Record "Client Contract")
    begin
        OnBeforeOpenContract(ClientContract);

        ClientContract."Contract Status" := ClientContract."Contract Status"::Open;
        ClientContract.Modify(true);

        OnAfterOpenContract(ClientContract);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeReleaseContract(var ClientContract: Record "Client Contract")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterReleaseContract(var ClientContract: Record "Client Contract")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOpenContract(var ClientContract: Record "Client Contract")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterOpenContract(var ClientContract: Record "Client Contract")
    begin
    end;

}