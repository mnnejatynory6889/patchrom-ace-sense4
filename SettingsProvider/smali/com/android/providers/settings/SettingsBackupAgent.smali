.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;
.source "SettingsBackupAgent.java"


# static fields
.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_BACKUP:Z = false

.field private static final EMPTY_DATA:[B = null

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final FILE_WIFI_SUPPLICANT_TEMPLATE:Ljava/lang/String; = "/system/etc/wifi/wpa_supplicant.conf"

.field private static final FULL_BACKUP_VERSION:I = 0x1

.field private static final INTEGER_BYTE_COUNT:I = 0x4

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_SECURE:Ljava/lang/String; = "secure"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final KEY_WIFI_CONFIG:Ljava/lang/String; = "\uffedCONFIG_WIFI"

.field private static final KEY_WIFI_SUPPLICANT:Ljava/lang/String; = "\uffedWIFI"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final STAGE_FILE:Ljava/lang/String; = "flattened-data"

.field private static final STATE_LOCALE:I = 0x2

.field private static final STATE_SECURE:I = 0x1

.field private static final STATE_SIZE:I = 0x5

.field private static final STATE_SYSTEM:I = 0x0

.field private static final STATE_VERSION:I = 0x2

.field private static final STATE_VERSION_1:I = 0x1

.field private static final STATE_VERSION_1_SIZE:I = 0x4

.field private static final STATE_WIFI_CONFIG:I = 0x4

.field private static final STATE_WIFI_SUPPLICANT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SettingsBackupAgent"

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    .line 63
    sget-boolean v0, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v3, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    .line 89
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;-><init>()V

    return-void
.end method

.method private copyWifiSupplicantTemplate()V
    .locals 7

    .prologue
    .line 671
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 672
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 684
    .local v1, bw:Ljava/io/BufferedWriter;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 685
    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 697
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 701
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #line:Ljava/lang/String;
    :goto_1
    return-void

    .line 689
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 690
    const-string v4, "SettingsBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyWifiSupplicantTemplate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 693
    const-string v4, "\n"

    const/4 v5, 0x0

    const-string v6, "\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 699
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    const-string v5, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 735
    .local v0, state:I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 738
    .end local v0           #state:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 20
    .parameter "cursor"
    .parameter "settings"

    .prologue
    .line 480
    move-object/from16 v0, p2

    array-length v12, v0

    .line 481
    .local v12, settingsCount:I
    mul-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 482
    .local v16, values:[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_1

    .line 483
    const-string v17, "SettingsBackupAgent"

    const-string v18, "Couldn\'t read from the cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 540
    :cond_0
    return-object v11

    .line 488
    :cond_1
    const/4 v13, 0x0

    .line 489
    .local v13, totalSize:I
    const/4 v2, 0x0

    .line 490
    .local v2, backedUpSettingIndex:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v3, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_6

    .line 492
    aget-object v7, p2, v6

    .line 493
    .local v7, key:Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 496
    .local v14, value:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 497
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_2

    .line 498
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, cursorKey:Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, cursorValue:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 501
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 502
    move-object v14, v5

    .line 509
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_2
    if-nez v14, :cond_5

    .line 510
    sget-boolean v17, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v17, :cond_3

    .line 511
    const-string v17, "SettingsBackupAgent"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skip backup settings: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (value is null)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 505
    .restart local v4       #cursorKey:Ljava/lang/String;
    .restart local v5       #cursorValue:Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 517
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 518
    .local v8, keyBytes:[B
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 519
    mul-int/lit8 v17, v2, 0x2

    aput-object v8, v16, v17

    .line 521
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 522
    .local v15, valueBytes:[B
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 523
    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v17, v17, 0x1

    aput-object v15, v16, v17

    .line 525
    add-int/lit8 v2, v2, 0x1

    .line 527
    sget-boolean v17, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v17, :cond_3

    .line 528
    const-string v17, "SettingsBackupAgent"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Backed up setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 533
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keyBytes:[B
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valueBytes:[B
    :cond_6
    new-array v11, v13, [B

    .line 534
    .local v11, result:[B
    const/4 v10, 0x0

    .line 535
    .local v10, pos:I
    mul-int/lit8 v9, v2, 0x2

    .line 536
    .local v9, keyValuePairCount:I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    .line 537
    aget-object v17, v16, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v10

    .line 538
    aget-object v17, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v10

    .line 536
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 544
    const/4 v3, 0x0

    .line 546
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 553
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 554
    .local v6, offset:I
    const/4 v5, 0x0

    .line 556
    .local v5, numRead:I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 557
    add-int/2addr v6, v5

    goto :goto_0

    .line 561
    :cond_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 562
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 570
    .end local v0           #bytes:[B
    if-eqz v4, :cond_1

    .line 572
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 574
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .line 570
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :cond_3
    if-eqz v4, :cond_4

    .line 572
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v3, v4

    .line 574
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 566
    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    :catch_0
    move-exception v2

    .line 567
    .local v2, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    if-eqz v3, :cond_2

    .line 572
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 573
    :catch_1
    move-exception v7

    goto :goto_2

    .line 570
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 572
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 574
    :cond_5
    :goto_6
    throw v7

    .line 573
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0       #bytes:[B
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 570
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 566
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 381
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v1, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v1, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 610
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 611
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    .local v5, relevantLines:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 614
    .local v6, started:Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 615
    if-nez v6, :cond_1

    const-string v7, "network"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 616
    const/4 v6, 0x1

    .line 618
    :cond_1
    if-eqz v6, :cond_0

    .line 619
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 630
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 631
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    if-eqz v0, :cond_2

    .line 636
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 638
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v7

    .line 622
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 623
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 634
    if-eqz v1, :cond_4

    .line 636
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move-object v0, v1

    .line 638
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 625
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 634
    if-eqz v1, :cond_6

    .line 636
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 638
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 628
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :cond_7
    :try_start_8
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 634
    if-eqz v0, :cond_2

    .line 636
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 637
    :catch_1
    move-exception v8

    goto :goto_2

    .line 634
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_8

    .line 636
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 638
    :cond_8
    :goto_6
    throw v7

    .line 637
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v3           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 634
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 630
    .end local v2           #file:Ljava/io/File;
    :catch_6
    move-exception v3

    goto :goto_1
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 724
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 729
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 310
    new-array v2, v6, [J

    .line 312
    .local v2, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 316
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 317
    .local v3, stateVersion:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1           #i:I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 322
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 323
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v1           #i:I
    .end local v3           #stateVersion:I
    :catch_0
    move-exception v4

    .line 330
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 331
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 5
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 581
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 582
    .local v0, bytes:[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 589
    :goto_0
    return-void

    .line 584
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 585
    array-length v2, v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read file data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 6
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 593
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 596
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 597
    .local v2, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 598
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v0           #file:Ljava/io/File;
    .end local v2           #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, ioe:Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V
    .locals 4
    .parameter "data"
    .parameter "contentUri"

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 394
    .local v1, settings:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    array-length v2, v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 400
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;)V
    .locals 17
    .parameter "settings"
    .parameter "bytes"
    .parameter "contentUri"

    .prologue
    .line 403
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 404
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restoreSettings: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    const/4 v13, 0x0

    .line 409
    .local v13, whitelist:[Ljava/lang/String;
    sget-object v14, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 410
    sget-object v14, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v15, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 422
    :goto_0
    const/4 v9, 0x0

    .line 423
    .local v9, pos:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v2, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    const/4 v14, 0x2

    invoke-direct {v3, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 425
    .local v3, contentValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 427
    .local v10, settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    array-length v12, v13

    .line 428
    .local v12, whiteListSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v12, :cond_a

    .line 429
    aget-object v7, v13, v6

    .line 430
    .local v7, key:Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 433
    .local v11, value:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 434
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v8

    .line 436
    .local v8, length:I
    add-int/lit8 v9, v9, 0x4

    .line 437
    if-lez v8, :cond_5

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v9, v8}, Ljava/lang/String;-><init>([BII)V

    .line 438
    .local v4, dataKey:Ljava/lang/String;
    :goto_3
    add-int/2addr v9, v8

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v8

    .line 440
    add-int/lit8 v9, v9, 0x4

    .line 441
    if-lez v8, :cond_6

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9, v8}, Ljava/lang/String;-><init>([BII)V

    .line 442
    .local v5, dataValue:Ljava/lang/String;
    :goto_4
    add-int/2addr v9, v8

    .line 443
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 444
    move-object v11, v5

    .line 451
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v8           #length:I
    :cond_1
    if-nez v11, :cond_8

    .line 452
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 453
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skip restore settings: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (value is null)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 413
    .end local v2           #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v6           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #pos:I
    .end local v10           #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .end local v11           #value:Ljava/lang/String;
    .end local v12           #whiteListSize:I
    :cond_3
    sget-object v14, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 414
    sget-object v14, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v15, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 418
    :cond_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 437
    .restart local v2       #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v6       #i:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v8       #length:I
    .restart local v9       #pos:I
    .restart local v10       #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .restart local v11       #value:Ljava/lang/String;
    .restart local v12       #whiteListSize:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 441
    .restart local v4       #dataKey:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 447
    .restart local v5       #dataValue:Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 458
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v8           #length:I
    :cond_8
    invoke-virtual {v10, v7, v11}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 459
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 460
    const-string v14, "name"

    invoke-virtual {v3, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v14, "value"

    invoke-virtual {v3, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 465
    :cond_9
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 466
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Restored setting: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 469
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 644
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 645
    .local v0, bytes:[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 652
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 648
    array-length v2, v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Unable to read supplicant data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;[BI)V
    .locals 6
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 656
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v2, supplicantFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate()V

    .line 660
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 661
    .local v1, os:Ljava/io/OutputStream;
    const-string v3, "\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 662
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 663
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v1           #os:Ljava/io/OutputStream;
    .end local v2           #supplicantFile:Ljava/io/File;
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 719
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 720
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 348
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 349
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 350
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 351
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 360
    .end local p1
    :goto_0
    return-wide p1

    .line 355
    .restart local p1
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 356
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 360
    goto :goto_0

    .line 357
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 711
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 712
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 713
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 714
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 715
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 341
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 344
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 30
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super/range {p0 .. p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onBackupPreprocess()V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 137
    .local v7, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 138
    .local v12, secureSettingsData:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v17

    .line 139
    .local v17, locale:[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v22

    .line 140
    .local v22, wifiSupplicantData:[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v27

    .line 142
    .local v27, wifiConfigData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v29

    .line 144
    .local v29, stateChecksums:[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v29, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v29, v9

    .line 146
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v29, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 148
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v14, v29, v4

    const-string v16, "locale"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 150
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v19, v29, v4

    const-string v21, "\uffedWIFI"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 153
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v24, v29, v4

    const-string v26, "\uffedCONFIG_WIFI"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 158
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 121
    sget-boolean v1, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_0

    const-string v1, "SettingsBackupAgent"

    const-string v2, "onCreate() invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 124
    invoke-super {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onCreate()V

    .line 126
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 127
    .local v0, mWfm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 128
    :cond_1
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 13
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onFullBackupPreprocess()V

    .line 202
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 203
    .local v7, systemSettingsData:[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v5

    .line 204
    .local v5, secureSettingsData:[B
    iget-object v10, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v10}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v2

    .line 205
    .local v2, locale:[B
    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v9

    .line 206
    .local v9, wifiSupplicantData:[B
    sget-object v10, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v8

    .line 210
    .local v8, wifiConfigData:[B
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, root:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string v10, "flattened-data"

    invoke-direct {v6, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v6, stage:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v1, filestream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .local v0, bufstream:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    .local v3, out:Ljava/io/DataOutputStream;
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_0

    const-string v10, "SettingsBackupAgent"

    const-string v11, "Writing flattened data version 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_1

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of settings data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    array-length v10, v7

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 222
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 223
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_2

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of secure settings data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    array-length v10, v5

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 226
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_3

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of locale data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    array-length v10, v2

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 229
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_4

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of wifi supplicant data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    array-length v10, v9

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 232
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_5

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of wifi config data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_5
    array-length v10, v8

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 234
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 239
    invoke-virtual {p0, v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 243
    return-void

    .line 241
    .end local v0           #bufstream:Ljava/io/BufferedOutputStream;
    .end local v1           #filestream:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v10
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 167
    .local v3, size:I
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    .line 169
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    .line 170
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyWifiApSettings()V

    goto :goto_0

    .line 171
    :cond_0
    const-string v4, "secure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_0

    .line 173
    :cond_1
    const-string v4, "\uffedWIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    invoke-direct {p0, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v2

    .line 175
    .local v2, retainedWifiState:I
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    .line 176
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v6, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3f2

    invoke-static {v4, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 181
    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 183
    .end local v2           #retainedWifiState:I
    :cond_4
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    new-array v1, v3, [B

    .line 185
    .local v1, localeData:[B
    invoke-virtual {p1, v1, v5, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 186
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .line 187
    .end local v1           #localeData:[B
    :cond_5
    const-string v4, "\uffedCONFIG_WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 190
    :cond_6
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto/16 :goto_0

    .line 194
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #size:I
    :cond_7
    invoke-super {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onRestorePostProcess()V

    .line 195
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "relpath"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_0

    const-string v6, "SettingsBackupAgent"

    const-string v7, "onRestoreFile() invoked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 254
    .local v2, instream:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v1, in:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 257
    .local v5, version:I
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_1

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flattened data version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 260
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 261
    .local v3, nBytes:I
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_2

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of settings data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    new-array v0, v3, [B

    .line 263
    .local v0, buffer:[B
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 264
    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 268
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_3

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of secure settings data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    array-length v6, v0

    if-le v3, v6, :cond_4

    new-array v0, v3, [B

    .line 270
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 271
    sget-object v6, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 275
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_5

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of locale data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_5
    array-length v6, v0

    if-le v3, v6, :cond_6

    new-array v0, v3, [B

    .line 277
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 278
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6, v0, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    .line 281
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 282
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_7

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of wifi supplicant data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_7
    array-length v6, v0

    if-le v3, v6, :cond_8

    new-array v0, v3, [B

    .line 284
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 285
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v4

    .line 286
    .local v4, retainedWifiState:I
    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v6, v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    .line 287
    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v7, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x3f2

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 292
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    :cond_9
    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    .line 296
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 297
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_a

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of wifi config data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_a
    array-length v6, v0

    if-le v3, v6, :cond_b

    new-array v0, v3, [B

    .line 299
    :cond_b
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 300
    sget-object v6, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    .line 302
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_c

    const-string v6, "SettingsBackupAgent"

    const-string v7, "Full restore complete."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_c
    return-void

    .line 292
    :cond_d
    const/4 v6, 0x0

    goto :goto_0

    .line 304
    .end local v0           #buffer:[B
    .end local v3           #nBytes:I
    .end local v4           #retainedWifiState:I
    :cond_e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 305
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid file schema"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
