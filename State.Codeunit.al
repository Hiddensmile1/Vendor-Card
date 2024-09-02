codeunit 50215 "Sate Update"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeader', '', false, false)]
    procedure CopyGenJnlLIneFromPurchHdr(PurchaseHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    var
        myInt: Integer;
    begin
        GenJournalLine.States := PurchaseHeader.State;
    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Gen. Jnl.-Post Line", 'OnAfterVendLedgEntryInsertInclPreviewMode', '', false, false)]
    procedure OnAfterVendLedgEntryInsert(GenJournalLine: Record "Gen. Journal Line"; sender: Codeunit "Gen. Jnl.-Post Line"; var VendorLedgerEntry: Record "Vendor Ledger Entry")
    var
        myInt: Integer;
    begin
        VendorLedgerEntry.State := GenJournalLine.States;
        VendorLedgerEntry.Modify();
    end;

}