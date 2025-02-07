.class public Lcom/google/android/mms/pdu/ReadRecInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1
    .parameter "from"
    .parameter "messageId"
    .parameter "mmsVersion"
    .parameter "readStatus"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/ReadRecInd;->setMmsVersion(I)V

    .line 44
    invoke-virtual {p0, p5}, Lcom/google/android/mms/pdu/ReadRecInd;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 45
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/ReadRecInd;->setReadStatus(I)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public setReadStatus(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method
