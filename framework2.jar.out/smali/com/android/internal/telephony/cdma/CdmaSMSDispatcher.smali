.class public final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;


# instance fields
.field private mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field protected mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 157
    sput-object p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "type"
    .parameter "wapPush"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 164
    sput-object p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 135
    sput-object p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method private KddiInvalidateSendSms(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "sentIntent"

    .prologue
    .line 1917
    if-eqz p1, :cond_0

    .line 1919
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1486
    add-int/lit8 p1, p1, 0x4

    .line 1487
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 1488
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1490
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 1491
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 1494
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return v4

    .line 1498
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 1501
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1507
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private get3gpp2DeliverySmsRawPdu(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/os/Bundle;Z)[B
    .locals 15
    .parameter "sDestAddress"
    .parameter "encoding"
    .parameter "userDataHeader"
    .parameter "userData"
    .parameter "payloadStr"
    .parameter "bundle"
    .parameter "statusReportRequested"

    .prologue
    .line 1544
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;-><init>()V

    .line 1545
    .local v6, encoder:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
    const/4 v9, 0x0

    .line 1547
    .local v9, pdu:[B
    const/4 v10, 0x0

    .line 1548
    .local v10, sCallback:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1549
    .local v7, iPriority:I
    if-eqz p6, :cond_0

    .line 1550
    const-string v11, "CALLBACK"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1551
    const-string v11, "PRIORITY"

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1555
    :cond_0
    const/4 v3, 0x0

    .line 1556
    .local v3, bNBPCD:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_1

    .line 1558
    const-string v11, "ril.cdmaphoneapp.nbpcd.support"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1559
    const-string v11, "get3gpp2DeliverySmsRawPdu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Query NBPCD state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_1
    const/4 v4, 0x0

    .line 1563
    .local v4, bRemovePlus:Z
    const/4 v11, 0x1

    if-ne v11, v3, :cond_5

    .line 1564
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1565
    const-string v11, "get3gpp2DeliverySmsRawPdu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before To NBPCD: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1567
    .local v8, outAddrStr:Ljava/lang/String;
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_4

    .line 1568
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_3

    .line 1570
    const/4 v4, 0x1

    .line 1572
    :cond_3
    move-object/from16 p1, v8

    .line 1574
    :cond_4
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 1575
    const-string v11, "get3gpp2DeliverySmsRawPdu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after To NBPCD: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    .end local v8           #outAddrStr:Ljava/lang/String;
    :cond_5
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1580
    .local v2, addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1581
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_6

    .line 1582
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1584
    :cond_6
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v2, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamDestAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V

    .line 1588
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1589
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1590
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_8

    .line 1591
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1593
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v2, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamCallBack(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V

    .line 1597
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamBearerReplyOption(B)V

    .line 1601
    if-eqz p5, :cond_b

    .line 1602
    move/from16 v0, p2

    int-to-byte v11, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v6, v11, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamUserData(B[BLjava/lang/String;)V

    .line 1608
    :goto_0
    int-to-byte v11, v7

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamPriority(B)V

    .line 1609
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamLanguage(S)V

    .line 1611
    const/4 v11, 0x1

    move/from16 v0, p7

    if-ne v0, v11, :cond_a

    .line 1612
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamReplyOption(ZZZZ)V

    .line 1615
    :cond_a
    const/16 v11, 0x9

    move/from16 v0, p2

    if-ne v0, v11, :cond_c

    .line 1616
    const/16 v11, 0x1005

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodePdu(IB)[B

    move-result-object v9

    :goto_1
    move-object v11, v9

    .line 1627
    .end local v2           #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :goto_2
    return-object v11

    .line 1605
    .restart local v2       #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :cond_b
    move/from16 v0, p2

    int-to-byte v11, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v6, v11, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamUserData(B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1622
    .end local v2           #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :catch_0
    move-exception v5

    .line 1623
    .local v5, e:Ljava/lang/Exception;
    const-string v11, "get3gpp2DeliverySmsRawPdu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "encode PDU exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const/4 v11, 0x0

    goto :goto_2

    .line 1619
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :cond_c
    const/16 v11, 0x1002

    const/4 v12, 0x2

    :try_start_1
    invoke-virtual {v6, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodePdu(IB)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method

.method static getPhoneContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1529
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v0, :cond_0

    .line 1530
    const/4 v0, 0x0

    .line 1532
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .parameter "sms"

    .prologue
    .line 215
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isPendingMsgRepoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->htcHandleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ack message messageRef >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 222
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 223
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pending messageRef >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_2

    .line 226
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 228
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 230
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v5

    goto :goto_0

    .line 221
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private htcHandleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 10
    .parameter "sms"

    .prologue
    const/4 v9, -0x1

    .line 241
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ack message messageRef >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v4, -0x1

    .line 243
    .local v4, pos:I
    const/4 v5, 0x0

    .line 244
    .local v5, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 246
    .restart local v5       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v6, v7, :cond_2

    .line 247
    move v4, v2

    .line 253
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v1, fillIn:Landroid/content/Intent;
    const-string v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 255
    const-string v6, "format"

    const-string v7, "3gpp2"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    if-le v4, v9, :cond_3

    .line 258
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 260
    .local v3, intent:Landroid/app/PendingIntent;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v3           #intent:Landroid/app/PendingIntent;
    :goto_1
    if-le v4, v9, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-static {v6, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 268
    return-void

    .line 244
    .end local v1           #fillIn:Landroid/content/Intent;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .restart local v1       #fillIn:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-static {v6, v7, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_1

    .line 261
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private kddiBroadcastEmailSignal([[B)V
    .locals 5
    .parameter "pdus"

    .prologue
    .line 1822
    const-string v1, "CDMA"

    const-string v2, "kddiNotifySmsToEmailSignal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    const-string v3, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1826
    .local v0, accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 1827
    return-void
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1513
    packed-switch p1, :pswitch_data_0

    .line 1524
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 1517
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1519
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 1521
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1513
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendDataVZWLTE(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 906
    if-eqz p6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v12

    .line 908
    .local v12, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 910
    .local v13, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    move/from16 v0, p3

    iput v0, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 911
    const/4 v4, 0x0

    iput v4, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 912
    const/4 v4, 0x0

    iput-boolean v4, v13, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 914
    new-instance v15, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 915
    .local v15, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v13, v15, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 917
    const/4 v6, 0x0

    invoke-static {v15}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p6, :cond_1

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->get3gpp2DeliverySmsRawPdu(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/os/Bundle;Z)[B

    move-result-object v14

    .line 919
    .local v14, rawPdu:[B
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 920
    .local v10, bundle:Landroid/os/Bundle;
    const-string v4, "DEST_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v4, "3GPP2_RAW_PDU"

    invoke-virtual {v10, v4, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 923
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 927
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v13           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v14           #rawPdu:[B
    .end local v15           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :goto_2
    return-void

    .line 906
    .end local v12           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 917
    .restart local v12       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v13       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .restart local v15       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 925
    .end local v13           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v15           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    goto :goto_2
.end method

.method private sendTextVZWLTE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 1052
    if-eqz p5, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 1054
    .local v9, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1055
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getUserDataEncodingFromText(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getUserDataFromText(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz p5, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->get3gpp2DeliverySmsRawPdu(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/os/Bundle;Z)[B

    move-result-object v10

    .line 1057
    .local v10, rawPdu:[B
    if-nez p6, :cond_0

    .line 1058
    new-instance p6, Landroid/os/Bundle;

    .end local p6
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .restart local p6
    :cond_0
    const-string v1, "DEST_ADDRESS"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v1, "3GPP2_RAW_PDU"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1062
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 1066
    .end local v10           #rawPdu:[B
    :goto_2
    return-void

    .line 1052
    .end local v9           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1055
    .restart local v9       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1064
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    goto :goto_2
.end method


# virtual methods
.method protected KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 4
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1854
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify To app. Action> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1857
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1858
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1859
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1860
    return-void
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 8
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1429
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ack last incoming sms> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-string v5, "ril.cdma.inecmmode"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, inEcm:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1435
    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_6

    move v2, v3

    .line 1438
    .local v2, isKddi:Z
    :goto_1
    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 1444
    const/4 p2, 0x3

    .line 1447
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 1448
    .local v0, causeCode:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 1450
    if-eqz v2, :cond_4

    .line 1456
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    if-eqz v5, :cond_4

    .line 1457
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v5, :cond_2

    .line 1458
    new-instance v5, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v3, v3}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/content/Context;IZ)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 1460
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-eqz p1, :cond_3

    move v3, v4

    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    .line 1463
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .line 1468
    :cond_4
    if-nez v0, :cond_5

    .line 1469
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 1471
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0

    .end local v0           #causeCode:I
    .end local v2           #isKddi:Z
    :cond_6
    move v2, v4

    .line 1435
    goto :goto_1
.end method

.method public calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1272
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 29
    .parameter "smsb"

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string v25, "CDMA"

    const-string v26, "dispatchMessage: message is null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v25, 0x2

    .line 599
    :goto_0
    return v25

    .line 296
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    move-object/from16 v18, p1

    .line 297
    check-cast v18, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 298
    .local v18, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v10

    .line 299
    .local v10, isCmas:Z
    const/4 v13, 0x0

    .line 300
    .local v13, isInEcm:Z
    const-string v25, "CDMA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isCmas? "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v25, "ril.cdma.inecmmode"

    const-string v26, "false"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, inEcm:Ljava/lang/String;
    const-string v25, "true"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 310
    const-string v25, "CDMA"

    const-string v26, "Ecm callback mode."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v13, 0x1

    .line 312
    if-nez v10, :cond_1

    .line 313
    const/16 v25, -0x1

    goto :goto_0

    .line 319
    :cond_1
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x51

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/4 v14, 0x1

    .line 322
    .local v14, isKddi:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 324
    const-string v25, "CDMA"

    const-string v26, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v25, 0x1

    goto :goto_0

    .line 319
    .end local v14           #isKddi:Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 333
    .restart local v14       #isKddi:Z
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 336
    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 339
    const-string v25, "CDMA"

    const-string v26, "got Duplicate SMS -- drop it"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCmasAckReturnEnable()Z

    move-result v25

    if-nez v25, :cond_4

    .line 343
    const/16 v25, -0x1

    goto/16 :goto_0

    .line 346
    :cond_4
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 351
    :cond_5
    if-eqz v13, :cond_6

    if-eqz v10, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 361
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v25, "CDMA"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "put CMAS in queue: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit v26

    .line 364
    const/16 v25, -0x1

    goto/16 :goto_0

    .line 363
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 369
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 371
    const/4 v11, 0x0

    .line 373
    .local v11, isDiscard:Z
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 374
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 378
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v25

    if-nez v25, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 380
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 385
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->check3gpp2BCSMSDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 387
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 389
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupported3gpp2BCSMS(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 390
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 392
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 393
    const/4 v11, 0x1

    .line 399
    :cond_b
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 401
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    const-string v26, "OTA-1-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_c

    .line 402
    const/16 v25, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 403
    const/16 v25, 0x3

    goto/16 :goto_0

    .line 408
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v22

    .line 409
    .local v22, teleService:I
    const-string v25, "CDMA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "teleService> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v7, 0x0

    .line 412
    .local v7, handled:Z
    const/16 v25, 0x1003

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    const/high16 v25, 0x4

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 417
    :cond_d
    if-eqz v14, :cond_e

    const/16 v25, 0x3

    goto/16 :goto_0

    .line 419
    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v23

    .line 420
    .local v23, voicemailCount:I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v24

    .line 421
    .local v24, voicemailpriority:I
    const-string v25, "CDMA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Voicemail count="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 425
    .local v20, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 426
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v25, "vm_count_key_cdma"

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 427
    const-string v25, "vm_priority_key_cdma"

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 433
    sget-object v25, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->updateMessageWaitingIndicator(ZI)V

    .line 439
    :goto_2
    const/4 v7, 0x1

    .line 457
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #sp:Landroid/content/SharedPreferences;
    .end local v23           #voicemailCount:I
    .end local v24           #voicemailpriority:I
    :cond_f
    :goto_3
    if-eqz v7, :cond_14

    .line 458
    const-string v25, "CDMA"

    const-string v26, "handled"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 436
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v20       #sp:Landroid/content/SharedPreferences;
    .restart local v23       #voicemailCount:I
    .restart local v24       #voicemailpriority:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    goto :goto_2

    .line 440
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #sp:Landroid/content/SharedPreferences;
    .end local v23           #voicemailCount:I
    .end local v24           #voicemailpriority:I
    :cond_11
    const/16 v25, 0x1002

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    const/16 v25, 0x1005

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 444
    const/4 v7, 0x1

    goto :goto_3

    .line 445
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v25

    if-nez v25, :cond_f

    .line 447
    const-string v25, "CDMA"

    const-string v26, "Received SMS without user data"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v25, "CDMA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "servCategory> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    .line 454
    const/4 v7, 0x1

    goto :goto_3

    .line 462
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEasAllowSms()Z

    move-result v25

    if-nez v25, :cond_16

    :cond_15
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v25

    sget-object v26, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_16

    .line 467
    const/16 v25, 0x3

    goto/16 :goto_0

    .line 471
    :cond_16
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x94

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_17

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0xab

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_17

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0xaf

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 474
    :cond_17
    const-string v25, "9999999999"

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 475
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v25

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCtCdmaWapPdu([BILjava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 482
    :cond_18
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    const/4 v9, 0x1

    .line 484
    .local v9, isAsiaChs:Z
    :goto_4
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0xd8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_19

    if-nez v9, :cond_19

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 486
    :cond_19
    const v25, 0xfdea

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 487
    const-string v25, "CDMA"

    const-string v26, "got CT WAP"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v25

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCtCdmaWapPdu([BILjava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 482
    .end local v9           #isAsiaChs:Z
    :cond_1a
    const/4 v9, 0x0

    goto :goto_4

    .line 490
    .restart local v9       #isAsiaChs:Z
    :cond_1b
    const v25, 0xfdf1

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 491
    const-string v25, "CDMA"

    const-string v26, "got CT DM WAP"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v25

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 498
    :cond_1c
    const/16 v25, 0x1004

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 499
    const-string v25, "CDMA"

    const-string v26, "process CdmaWap Push"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v25

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;Z)I

    move-result v25

    goto/16 :goto_0

    .line 507
    :cond_1d
    const/16 v25, 0x1002

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    const/16 v25, 0x1005

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    const/16 v25, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    const/16 v25, 0x1001

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    .line 511
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 525
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v19

    .line 534
    .local v19, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v19, :cond_1f

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v25, v0

    if-nez v25, :cond_27

    .line 536
    :cond_1f
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 537
    .local v17, pdus:[[B
    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v26

    aput-object v26, v17, v25

    .line 539
    if-eqz v19, :cond_21

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v25, v0

    if-eqz v25, :cond_21

    .line 540
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v25, v0

    const/16 v26, 0xb84

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v25, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 545
    :cond_20
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 596
    :goto_5
    const/16 v25, -0x1

    goto/16 :goto_0

    .line 548
    :cond_21
    const/4 v15, 0x0

    .line 549
    .local v15, isLBSMessage:Z
    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0xa8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 550
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v21

    .line 553
    .local v21, str:Ljava/lang/String;
    if-eqz v21, :cond_24

    .line 554
    const-string v25, "//VZW"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_22

    const-string v25, "//VZW"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_22

    const/4 v5, 0x1

    .line 555
    .local v5, beVZWstarted:Z
    :goto_6
    const-string v25, "CDMA"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "check DirectedSMS V12 old format: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkVZWDirectedSMSV12(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 558
    const-string v25, "CDMA"

    const-string v26, "Directed SMS v12 true, return handled"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 554
    .end local v5           #beVZWstarted:Z
    :cond_22
    const/4 v5, 0x0

    goto :goto_6

    .line 560
    .restart local v5       #beVZWstarted:Z
    :cond_23
    if-eqz v5, :cond_24

    .line 561
    const/4 v15, 0x1

    .line 562
    const-string v25, "CDMA"

    const-string v26, "SMSV12dispatch/ isLBSMessage"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v5           #beVZWstarted:Z
    .end local v21           #str:Ljava/lang/String;
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v12

    .line 572
    .local v12, isEVDOMessage:Z
    const/16 v25, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    .line 573
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v16, it:Landroid/content/Intent;
    const-string v25, "lbs"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v25, "EVDOSms"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 577
    const-string v25, "discard"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;

    .line 580
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus(Landroid/content/Intent;[[B)V

    goto/16 :goto_5

    .line 584
    .end local v16           #it:Landroid/content/Intent;
    :cond_25
    if-eqz v14, :cond_26

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)V

    goto/16 :goto_5

    .line 590
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus(I[[BZZ)V

    goto/16 :goto_5

    .line 599
    .end local v12           #isEVDOMessage:Z
    .end local v15           #isLBSMessage:Z
    .end local v17           #pdus:[[B
    :cond_27
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v25

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 186
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "3gpp2"

    return-object v0
.end method

.method getUserDataEncodingFromText(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1673
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1674
    .local v2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1675
    :cond_0
    const/4 v1, -0x1

    .line 1697
    :goto_0
    return v1

    .line 1678
    :cond_1
    const/4 v1, 0x0

    .line 1681
    .local v1, encoding:I
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    .line 1684
    .local v0, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v3, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    .line 1687
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1691
    :cond_3
    if-ne v1, v4, :cond_4

    .line 1692
    const/4 v1, 0x2

    goto :goto_0

    .line 1694
    :cond_4
    const/4 v1, 0x4

    goto :goto_0
.end method

.method getUserDataFromText(Ljava/lang/String;)[B
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1633
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1634
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 1635
    :cond_0
    const/4 v0, 0x0

    .line 1667
    :goto_0
    return-object v0

    .line 1638
    :cond_1
    const/4 v2, 0x0

    .line 1641
    .local v2, encoding:I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 1644
    .local v1, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v2, v4, :cond_3

    if-eqz v2, :cond_2

    if-ne v2, v6, :cond_3

    .line 1647
    :cond_2
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1651
    :cond_3
    const/4 v0, 0x0

    .line 1652
    .local v0, data:[B
    if-ne v2, v6, :cond_4

    .line 1653
    const/4 v2, 0x2

    .line 1654
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1656
    :cond_4
    const/4 v2, 0x4

    .line 1659
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "utf-16be"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected handleCmasInEcmCallbackMode(Z)V
    .locals 5
    .parameter "isECM"

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 275
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsMessageBase;

    .line 277
    .local v0, smsb:Lcom/android/internal/telephony/SmsMessageBase;
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 280
    .end local v0           #smsb:Lcom/android/internal/telephony/SmsMessageBase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :cond_1
    return-void
.end method

.method public handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 205
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method protected htcSendCdmaSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;[B[BLandroid/os/Message;ZZ)Z
    .locals 6
    .parameter "tracker"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "reply"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1346
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1347
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms(), mImsRadioTech = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1350
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1356
    .local v0, ss:I
    const-string v3, "gsm.volte.ims.emulate.no_radio"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1357
    const/4 v0, 0x1

    .line 1363
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isImsAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1371
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BLandroid/os/Message;)V

    .line 1412
    .end local v0           #ss:I
    :cond_2
    :goto_0
    return v1

    .line 1374
    .restart local v0       #ss:I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 1375
    .end local v0           #ss:I
    :cond_4
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eq v2, v1, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1377
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 1405
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1407
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms(), mImsRadioTech = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1408
    goto :goto_0

    :cond_7
    move v1, v2

    .line 1411
    goto :goto_0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 9
    .parameter "pdus"
    .parameter "sms"

    .prologue
    const/4 v8, 0x1

    .line 1725
    const/4 v3, 0x0

    .line 1727
    .local v3, isSendAckSkip:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v4, :cond_0

    .line 1728
    new-instance v4, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x1100004

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    .line 1733
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v4, :cond_1

    .line 1734
    new-instance v4, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 1737
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v5, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(I[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1818
    :goto_0
    return-void

    .line 1741
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->KddiGetMessageEncoding()I

    move-result v1

    .line 1742
    .local v1, encoding:I
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Msgencoding> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v4, 0x4

    if-eq v4, v1, :cond_7

    .line 1746
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1747
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .line 1758
    .local v0, accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1764
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1765
    const/4 v3, 0x1

    .line 1770
    :cond_3
    if-nez v3, :cond_4

    .line 1773
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1794
    :cond_4
    :goto_2
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch discard? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiIsDiscard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is it special cmail? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiIsDiscard()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1799
    if-ne v3, v8, :cond_8

    .line 1800
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus(I[[B)V

    .line 1812
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v5, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1814
    .end local v0           #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v1           #encoding:I
    :catch_0
    move-exception v2

    .line 1816
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "CDMA"

    const-string v5, "judgeSmsType() failed to create SmsAccessory "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1749
    .end local v2           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #encoding:I
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .restart local v0       #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 1754
    .end local v0           #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 1775
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_2

    .line 1779
    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_2

    .line 1784
    :pswitch_2
    iget v4, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    goto/16 :goto_2

    .line 1802
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v4

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_9

    .line 1803
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiBroadcastEmailSignal([[B)V

    goto :goto_3

    .line 1805
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 4
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1838
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify To Email signal. Action> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1842
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1843
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1844
    return-void
.end method

.method protected packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;
    .locals 4
    .parameter "it"
    .parameter "smsb"
    .parameter "pdus"
    .parameter "idxonsims"

    .prologue
    const/4 v0, 0x1

    .line 606
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .restart local p1
    :cond_0
    move-object v1, p2

    .line 607
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 608
    .local v1, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    const-string v2, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v2, "cmas"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    const-string v2, "earthquake_alert"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    const-string v2, "pdus"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 612
    const-string v2, "isCdma"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 614
    .local v0, isCBM:Z
    :goto_0
    const-string v2, "is_cbm"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const-string v2, "idxonsim"

    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 616
    const-string v2, "kddi_bcsms"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiBCSMS()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    return-object p1

    .line 613
    .end local v0           #isCBM:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;Z)I
    .locals 16
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"
    .parameter "isCdmaFormat"

    .prologue
    .line 817
    const-string v1, "CDMA"

    const-string v3, "enter processCdmaWapPdu"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v11, 0x0

    .line 819
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .line 820
    .local v13, msgType:I
    if-eqz v13, :cond_0

    .line 821
    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string v1, "CDMA"

    const-string v3, "sms handled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v1, 0x1

    move v11, v12

    .line 876
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v1

    .line 825
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .line 826
    .local v6, totalSegments:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .line 828
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 829
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 834
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const/4 v15, 0x0

    .line 835
    .local v15, sourcePort:I
    const/4 v9, 0x0

    .line 836
    .local v9, destinationPort:I
    if-nez v5, :cond_5

    .line 837
    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->COMPILE_OPTION_OMA_SUPPORT:Z

    if-eqz v1, :cond_4

    .line 838
    const-string v1, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pdu length >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p1

    array-length v1, v0

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    .line 840
    const/4 v14, 0x0

    .line 842
    .local v14, pos:I
    :goto_1
    const/4 v1, 0x4

    if-ge v14, v1, :cond_2

    add-int/lit8 v1, v14, 0x7

    aget-byte v1, p1, v1

    add-int/lit8 v3, v14, 0x3

    aget-byte v3, p1, v3

    if-ne v1, v3, :cond_2

    .line 844
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 846
    :cond_2
    const-string v1, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x4

    if-lt v14, v1, :cond_4

    .line 849
    add-int/lit8 v11, v12, 0x4

    .line 854
    .end local v12           #index:I
    .end local v14           #pos:I
    .restart local v11       #index:I
    :goto_2
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v15, v1, 0x8

    .line 855
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v15, v1

    .line 856
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 857
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 860
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_3

    .line 861
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    add-int/lit8 v11, v11, 0x4

    .line 868
    :cond_3
    :goto_3
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .line 874
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_4
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto/16 :goto_2

    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_5
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_3
.end method

.method protected processCtCdmaWapPdu([BILjava/lang/String;Z)I
    .locals 32
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"
    .parameter "isCdmaFormat"

    .prologue
    .line 633
    const/16 v26, -0x1

    .line 634
    .local v26, segment:I
    const/16 v29, -0x1

    .line 635
    .local v29, totalSegments:I
    const/16 v18, 0x0

    .line 636
    .local v18, index:I
    const/16 v21, -0x1

    .line 638
    .local v21, msgType:I
    const/16 v28, 0x0

    .line 639
    .local v28, sourcePort:I
    const/4 v13, 0x0

    .line 641
    .local v13, destinationPort:I
    const/4 v8, -0x1

    .line 643
    .local v8, cuWapReferenceNumber:I
    const/16 v20, 0x0

    .line 645
    .local v20, mmsPdu:[B
    new-instance v19, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 651
    .local v19, is:Lcom/android/internal/util/BitwiseInputStream;
    :goto_0
    const/16 v2, 0x8

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    .line 652
    .local v17, id:I
    if-nez v17, :cond_4

    .line 653
    const/16 v2, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 654
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v8, v2, 0x8

    .line 655
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v8, v2

    .line 656
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    .end local v17           #id:I
    :catch_0
    move-exception v15

    .line 700
    .local v15, e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v2, "processCtCdmaWapPdu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while parse CT WAP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v8, -0x1

    .line 705
    .end local v15           #e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    if-nez v26, :cond_8

    const/16 v2, 0x23f0

    move/from16 v0, v28

    if-ne v0, v2, :cond_0

    const/16 v2, 0xb84

    if-eq v13, v2, :cond_8

    .line 706
    :cond_0
    const-string v2, "processCtCdmaWapPdu"

    const-string v3, "WSP first case !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v20, p1

    .line 712
    :cond_1
    :goto_2
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "processCtCdmaWapPdu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmsPdu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .local v31, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    const-string v2, " AND address = ?"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    .line 720
    .local v6, whereArgs:[Ljava/lang/String;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/16 v25, 0x0

    check-cast v25, [[B

    .line 725
    .local v25, pdus:[[B
    const/4 v9, 0x0

    .line 727
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 728
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 729
    .local v10, cursorCount:I
    add-int/lit8 v2, v29, -0x1

    if-eq v10, v2, :cond_9

    .line 731
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 732
    .local v30, values:Landroid/content/ContentValues;
    const-string v2, "date"

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 733
    const-string v2, "pdu"

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v2, "address"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    const-string v2, "count"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v2, "sequence"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v2, "destination_port"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 741
    const/4 v2, 0x1

    .line 768
    if-eqz v9, :cond_3

    .end local v10           #cursorCount:I
    .end local v30           #values:Landroid/content/ContentValues;
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 798
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v25           #pdus:[[B
    .end local v31           #where:Ljava/lang/StringBuilder;
    :cond_3
    :goto_4
    return v2

    .line 658
    .restart local v17       #id:I
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 660
    const/16 v2, 0x8

    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 661
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 662
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .line 665
    .local v22, num_field:I
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    .line 667
    if-eqz v21, :cond_5

    .line 668
    const-string v2, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v2, 0x1

    goto :goto_4

    .line 673
    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v29

    .line 674
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v26

    .line 677
    if-nez v26, :cond_6

    .line 678
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v28, v2, 0x8

    .line 679
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int v28, v28, v2

    .line 680
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v13, v2, 0x8

    .line 681
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v13, v2

    .line 684
    mul-int/lit8 v2, v22, 0x8

    add-int/lit8 v2, v2, -0x38

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v20

    .line 691
    :goto_5
    move/from16 p2, v8

    .line 693
    goto/16 :goto_1

    .line 687
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v20

    goto :goto_5

    .line 695
    .end local v22           #num_field:I
    :cond_7
    const/4 v8, -0x1

    .line 696
    goto/16 :goto_1

    .line 708
    .end local v17           #id:I
    :cond_8
    if-eqz v26, :cond_1

    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 709
    const-string v2, "processCtCdmaWapPdu"

    const-string v3, "WSP second case !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v20, p1

    goto/16 :goto_2

    .line 745
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #cursorCount:I
    .restart local v25       #pdus:[[B
    .restart local v31       #where:Ljava/lang/StringBuilder;
    :cond_9
    :try_start_3
    const-string v2, "pdu"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 746
    .local v24, pduColumn:I
    const-string v2, "sequence"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 748
    .local v27, sequenceColumn:I
    move/from16 v0, v29

    new-array v0, v0, [[B

    move-object/from16 v25, v0

    .line 749
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_b

    .line 750
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 751
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 753
    .local v11, cursorSequence:I
    if-nez v11, :cond_a

    .line 754
    const-string v2, "destination_port"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 755
    .local v14, destinationPortColumn:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v13, v2

    .line 757
    .end local v14           #destinationPortColumn:I
    :cond_a
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v25, v11

    .line 749
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 763
    .end local v11           #cursorSequence:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 768
    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_c
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 773
    .local v23, output:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 775
    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 778
    :try_start_4
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 773
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 764
    .end local v10           #cursorCount:I
    .end local v16           #i:I
    .end local v23           #output:Ljava/io/ByteArrayOutputStream;
    .end local v24           #pduColumn:I
    .end local v27           #sequenceColumn:I
    :catch_1
    move-exception v15

    .line 765
    .local v15, e:Landroid/database/SQLException;
    :try_start_5
    const-string v2, "CDMA"

    const-string v3, "Can\'t access multipart SMS database"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 766
    const/4 v2, 0x2

    .line 768
    if-eqz v9, :cond_3

    goto/16 :goto_3

    .end local v15           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 782
    .restart local v10       #cursorCount:I
    .restart local v16       #i:I
    .restart local v23       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #pduColumn:I
    .restart local v27       #sequenceColumn:I
    :cond_e
    aget-object v2, v25, v16

    const/4 v3, 0x0

    aget-object v4, v25, v16

    array-length v4, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 786
    :cond_f
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 788
    .local v12, datagram:[B
    packed-switch v13, :pswitch_data_0

    .line 794
    const/4 v2, 0x1

    new-array v0, v2, [[B

    move-object/from16 v25, v0

    .line 795
    const/4 v2, 0x0

    aput-object v12, v25, v2

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 798
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 791
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p3

    invoke-virtual {v2, v12, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v2

    goto/16 :goto_4

    .line 779
    .end local v12           #datagram:[B
    :catch_2
    move-exception v2

    goto :goto_8

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected resetLastSmsFingerprint()V
    .locals 3

    .prologue
    .line 1705
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, inEcm:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1709
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 1710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v4, 0x0

    .line 892
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendDataVZWLTE(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v5, v4

    move-object v6, p1

    .line 900
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0

    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    move v0, v4

    .line 898
    goto :goto_1
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 25
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 943
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v16, 0x0

    .line 944
    .local v16, bFirstSms:Z
    const/16 v17, 0x0

    .line 945
    .local v17, bLastSms:Z
    if-eqz p7, :cond_0

    .line 946
    const-string v3, "FIRST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 947
    const-string v3, "LAST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 950
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    .line 951
    .local v24, refNumber:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 952
    .local v22, msgCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 953
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 954
    .local v18, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 955
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 956
    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 957
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 958
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 959
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 961
    const/4 v10, 0x0

    .line 962
    .local v10, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_1

    .line 963
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 966
    .restart local v10       #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v11, 0x0

    .line 967
    .local v11, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_2

    .line 968
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 971
    .restart local v11       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v20, v0

    .line 973
    .local v20, concatedDate:I
    const/4 v14, 0x0

    .line 974
    .local v14, concateBundle:Landroid/os/Bundle;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_3

    .line 975
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 976
    .local v19, concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 977
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 978
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 980
    const-string v3, "Concate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertRawTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    const/4 v4, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/ConcatedUtil;->insertRawTable(ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader$ConcatRef;I)I

    .line 984
    new-instance v14, Landroid/os/Bundle;

    .end local v14           #concateBundle:Landroid/os/Bundle;
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 985
    .restart local v14       #concateBundle:Landroid/os/Bundle;
    const-string v3, "REFERENCE_NUMBER"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    const-string v3, "COUNT"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 987
    const-string v3, "SEQUENCE"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    const-string v3, "DESTADDR"

    move-object/from16 v0, p1

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v3, "DATE"

    move/from16 v0, v20

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 992
    .end local v19           #concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_3
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v23

    .line 995
    .local v23, pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz p7, :cond_b

    .line 996
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 997
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_5

    .line 998
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 952
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 992
    .end local v23           #pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 999
    .restart local v23       #pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    if-nez v21, :cond_6

    .line 1000
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 1001
    :cond_6
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_7

    .line 1002
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 1004
    :cond_7
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 1005
    :cond_8
    if-nez v21, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_9

    .line 1006
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 1007
    :cond_9
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    .line 1008
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 1010
    :cond_a
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1012
    :cond_b
    if-nez v21, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_c

    .line 1013
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1014
    :cond_c
    if-nez v21, :cond_d

    .line 1015
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1016
    :cond_d
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_e

    .line 1017
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1019
    :cond_e
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1022
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    .end local v11           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v14           #concateBundle:Landroid/os/Bundle;
    .end local v18           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v20           #concatedDate:I
    .end local v23           #pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_f
    return-void
.end method

.method public sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 1423
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 1075
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 34
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v25, -0x1

    .line 1099
    .local v25, nli:I
    const/16 v26, 0x0

    .line 1100
    .local v26, priority:I
    const/4 v11, 0x0

    .line 1103
    .local v11, callback:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 1104
    const-string v3, "NLI"

    const/4 v4, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 1105
    const-string v3, "PRIORITY"

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1106
    const-string v3, "CALLBACK"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1110
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v28, v0

    .line 1111
    .local v28, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1112
    .local v24, msgCount:I
    const/16 v20, 0x0

    .line 1113
    .local v20, encoding:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v15, v3

    .line 1118
    .local v15, concatedDate:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    .local v29, sb:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    .line 1120
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .line 1123
    .local v18, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v20, v0

    .line 1137
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 1138
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1139
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v28

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1140
    add-int/lit8 v3, v21, 0x1

    iput v3, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1141
    move/from16 v0, v24

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1142
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1143
    new-instance v31, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v31 .. v31}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1144
    .local v31, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v31

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1147
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_3

    .line 1148
    const/4 v3, 0x1

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 1149
    .local v16, data:[B
    const/4 v3, 0x0

    move/from16 v0, v25

    int-to-byte v4, v0

    aput-byte v4, v16, v3

    .line 1150
    new-instance v23, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 1152
    .local v23, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0xe

    move/from16 v0, v25

    if-eq v0, v3, :cond_2

    .line 1153
    const/16 v3, 0x24

    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 1154
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1155
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    :cond_2
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_3

    .line 1159
    new-instance v23, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v23           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 1160
    .restart local v23       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0x25

    move-object/from16 v0, v23

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 1161
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1162
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    .end local v16           #data:[B
    .end local v23           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_3
    const/16 v30, 0x0

    .line 1168
    .local v30, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_4

    .line 1169
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #sentIntent:Landroid/app/PendingIntent;
    check-cast v30, Landroid/app/PendingIntent;

    .line 1173
    .restart local v30       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v9, 0x0

    .line 1174
    .local v9, concateBundle:Landroid/os/Bundle;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_5

    .line 1175
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1176
    .local v13, concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v28

    iput v0, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1177
    iget v3, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v3, v3, 0x0

    iput v3, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1178
    iget v3, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, 0x0

    iput v3, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1180
    const-string v3, "Concate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMultipartText insertRawTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v3, v15, v0, v13, v4}, Lcom/android/internal/telephony/ConcatedUtil;->insertRawTable(ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader$ConcatRef;I)I

    .line 1184
    new-instance v9, Landroid/os/Bundle;

    .end local v9           #concateBundle:Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1185
    .restart local v9       #concateBundle:Landroid/os/Bundle;
    const-string v3, "REFERENCE_NUMBER"

    iget v4, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string v3, "COUNT"

    iget v4, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string v3, "SEQUENCE"

    iget v4, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v9, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    const-string v3, "DESTADDR"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v3, "DATE"

    invoke-virtual {v9, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v13           #concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_5
    move-object v14, v9

    .line 1193
    .end local v9           #concateBundle:Landroid/os/Bundle;
    .local v14, concateBundle:Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 1194
    .local v17, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_6

    .line 1195
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 1198
    .restart local v17       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    new-instance v33, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1199
    .local v33, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1201
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_b

    .line 1202
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const/16 v22, 0x1

    .line 1204
    .local v22, isAsiaChs:Z
    :goto_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-eq v3, v4, :cond_7

    if-eqz v22, :cond_a

    .line 1205
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, v33

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1212
    .end local v22           #isAsiaChs:Z
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1218
    if-eqz v17, :cond_c

    add-int/lit8 v3, v24, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v26

    invoke-static {v0, v1, v3, v2, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v32

    .line 1223
    .local v32, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1224
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1225
    move-object/from16 v0, v33

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getUserDataFromText(Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v17, :cond_d

    add-int/lit8 v3, v24, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_d

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->get3gpp2DeliverySmsRawPdu(Ljava/lang/String;I[B[BLjava/lang/String;Landroid/os/Bundle;Z)[B

    move-result-object v27

    .line 1227
    .local v27, rawPdu:[B
    if-nez v14, :cond_11

    .line 1228
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1229
    .end local v14           #concateBundle:Landroid/os/Bundle;
    .restart local v9       #concateBundle:Landroid/os/Bundle;
    :goto_6
    const-string v3, "DEST_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v3, "3GPP2_RAW_PDU"

    move-object/from16 v0, v27

    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1236
    .end local v27           #rawPdu:[B
    :goto_7
    if-nez v21, :cond_e

    .line 1237
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v32

    move-object/from16 v5, v30

    move-object/from16 v6, v17

    move-object/from16 v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 1245
    :goto_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_8

    .line 1248
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    const/16 v3, 0x12

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x1770

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1250
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1252
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    :cond_8
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1202
    .end local v9           #concateBundle:Landroid/os/Bundle;
    .end local v32           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v14       #concateBundle:Landroid/os/Bundle;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1207
    .restart local v22       #isAsiaChs:Z
    :cond_a
    const/16 v3, 0x9

    move-object/from16 v0, v33

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_3

    .line 1210
    .end local v22           #isAsiaChs:Z
    :cond_b
    const/4 v3, 0x4

    move-object/from16 v0, v33

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_3

    .line 1218
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1225
    .restart local v32       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_d
    const/4 v10, 0x0

    goto :goto_5

    .line 1238
    .end local v14           #concateBundle:Landroid/os/Bundle;
    .restart local v9       #concateBundle:Landroid/os/Bundle;
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_f

    add-int/lit8 v3, v24, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_f

    .line 1239
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v32

    move-object/from16 v5, v30

    move-object/from16 v6, v17

    move-object/from16 v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_8

    .line 1241
    :cond_f
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v32

    move-object/from16 v5, v30

    move-object/from16 v6, v17

    move-object/from16 v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_8

    .line 1252
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1254
    :catch_0
    move-exception v19

    .line 1255
    .local v19, e:Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait sent exception >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1261
    .end local v9           #concateBundle:Landroid/os/Bundle;
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v30           #sentIntent:Landroid/app/PendingIntent;
    .end local v31           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v32           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v33           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_10
    return-void

    .restart local v12       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v14       #concateBundle:Landroid/os/Bundle;
    .restart local v17       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v27       #rawPdu:[B
    .restart local v30       #sentIntent:Landroid/app/PendingIntent;
    .restart local v31       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v32       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v33       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_11
    move-object v9, v14

    .end local v14           #concateBundle:Landroid/os/Bundle;
    .restart local v9       #concateBundle:Landroid/os/Bundle;
    goto/16 :goto_6

    .end local v9           #concateBundle:Landroid/os/Bundle;
    .end local v27           #rawPdu:[B
    .restart local v14       #concateBundle:Landroid/os/Bundle;
    :cond_12
    move-object v9, v14

    .end local v14           #concateBundle:Landroid/os/Bundle;
    .restart local v9       #concateBundle:Landroid/os/Bundle;
    goto/16 :goto_7
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 1888
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiInvalidateSendSms(Landroid/app/PendingIntent;)V

    .line 1893
    :goto_0
    return-void

    .line 1891
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 1901
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiInvalidateSendSms(Landroid/app/PendingIntent;)V

    .line 1907
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-super/range {p0 .. p8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 8
    .parameter "tracker"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkInSegmentToRIL(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1328
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1331
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "pdu"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 1333
    .local v3, pdu:[B
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1335
    .local v4, reply:Landroid/os/Message;
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->htcSendCdmaSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;[B[BLandroid/os/Message;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 8
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 1280
    const/4 v6, 0x0

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 1295
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    if-eqz p2, :cond_0

    .line 1298
    :try_start_0
    const-string v0, "CDMA"

    const-string v1, "sendSubmitPdu, send message due to PROPERTY_INECM_MODE false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :cond_0
    :goto_0
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :goto_1
    return-void

    .line 1309
    :cond_1
    if-eqz p6, :cond_2

    .line 1311
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 1314
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_1

    .line 1300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 8
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 1287
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    const/4 v6, 0x0

    .line 1036
    const-string v0, "CDMA"

    const-string v2, "Enter cdmaSMSdispatcher sendText"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendTextVZWLTE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1047
    :goto_0
    return-void

    .line 1044
    :cond_0
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move v4, v6

    move v5, v6

    move-object v6, p1

    .line 1046
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0

    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    move v3, v6

    .line 1044
    goto :goto_1
.end method
