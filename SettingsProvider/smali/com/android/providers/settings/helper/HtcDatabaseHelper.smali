.class public Lcom/android/providers/settings/helper/HtcDatabaseHelper;
.super Ljava/lang/Object;
.source "HtcDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;,
        Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
    }
.end annotation


# static fields
.field private static final HTC_DATABASE_VERSION:I = 0x11

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mContext:Landroid/content/Context;

.field private mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 60
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 61
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 62
    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 73
    iput-object p1, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    .line 75
    return-void
.end method

.method private closeCompiledStatements()V
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, ">> closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 210
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 211
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 212
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 214
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "<< closeCompiledStatements()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 217
    :cond_1
    return-void
.end method

.method private initializeRequiredKeysOnCreate()V
    .locals 4

    .prologue
    .line 491
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v0, :cond_1

    .line 492
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t WIFI_ONLY_flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t hardware_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 498
    :cond_0
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "hardware_id"

    const-string v2, "ro.serialno"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    :cond_1
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 514
    return-void
.end method

.method private initializeRequiredKeysOnUpgrade()V
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 441
    return-void
.end method

.method private loadAppStorageLocationSettings(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 13
    .parameter "stage"

    .prologue
    .line 929
    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v10

    const/high16 v11, 0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 930
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 931
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sense "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t support application storage locations settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 1020
    :cond_0
    return-void

    .line 938
    :cond_1
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v12, "htc_app_storage_loc_"

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, HtcPrefixAppStorageLocStr:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 949
    .local v3, UNKNOWN_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 953
    .local v2, SD_CARD_STORAGE_TYPE:I
    sget-object v10, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v11, "HTC_APP_STORAGE_LOCATION_PHONE_STORAGE"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 961
    .local v1, PHONE_STORAGE_TYPE:I
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-eqz v10, :cond_4

    .line 963
    move v6, v1

    .line 980
    .local v6, defValue:I
    :goto_0
    iget-object v10, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 981
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v7, intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 990
    .local v9, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 991
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 993
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 994
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a app storage location settings, packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", label: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, databaseKey:Ljava/lang/String;
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v10, :cond_3

    .line 1006
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.android.bluetooth"

    if-ne v10, v11, :cond_3

    .line 1008
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1015
    :cond_3
    sget-object v10, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v10, v5, v11}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 964
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #databaseKey:Ljava/lang/String;
    .end local v6           #defValue:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-eqz v10, :cond_5

    .line 968
    move v6, v2

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 969
    .end local v6           #defValue:I
    :cond_5
    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    if-nez v10, :cond_6

    .line 973
    move v6, v1

    .restart local v6       #defValue:I
    goto/16 :goto_0

    .line 977
    .end local v6           #defValue:I
    :cond_6
    move v6, v3

    .restart local v6       #defValue:I
    goto/16 :goto_0
.end method

.method private loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "table"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 228
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 233
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 234
    const/4 v1, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 236
    return-void

    .line 231
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 524
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_AUTOMATIC_STARTUP"

    const-string v3, "htc_application_automatic_startup"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_automatic_startup()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_APPLICATION_NOTIFICATION"

    const-string v3, "htc_application_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_application_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method private loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 781
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CUSTOM_ORIENTATION"

    const-string v3, "custom_orientation"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_custom_orientation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method private loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 800
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "auto_time_zone"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_auto_time_zone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method private loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 812
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "COMPASS_WARNING"

    const-string v3, "compass_warning"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_compass_warning()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    return-void
.end method

.method private loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 826
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_NOTIFICATION"

    const-string v3, "charm_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_PHONE_NOTIFICATION"

    const-string v3, "charm_phone_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_phone_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_VOICE_MAIL_NOTIFICATION"

    const-string v3, "charm_voice_mail_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_voice_mail_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_MESSAGE_RECEIVED_NOTIFICATION"

    const-string v3, "charm_message_received_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_message_received_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "CHARM_INDICATOR_SUPPORTED"

    const-string v3, "charm_indicator_supported"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_charm_indicator_supported()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_phone_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_phone_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "htc_message_notification_preview"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_message_notification_preview()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method private loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 876
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTCSPEAK_DEFALUT_LANG"

    const-string v3, "htcspeak_default_lang"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htcspeak_default_lang()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_MUSIC_BYPASS_ENABLED"

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_music_bypass_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 890
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_GESTURES_ENABLED"

    const-string v3, "htc_gestures_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_gestures_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_ANIMATION_ENABLED"

    const-string v3, "htc_animation_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_animation_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 904
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WINDOW_ANIMATION_SCALE"

    const-string v3, "htc_window_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_window_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_TRANSITION_ANIMATION_SCALE"

    const-string v3, "htc_transition_animation_scale"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_transition_animation_scale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    return-void
.end method

.method private loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "stage"
    .parameter "db"

    .prologue
    .line 1041
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProfileTable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 1046
    :cond_0
    :try_start_0
    const-string v1, "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE ON CONFLICT REPLACE, value TEXT);"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1051
    const-string v1, "CREATE INDEX profileIndex1 ON profile (name);"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "The table \'profile\' already exists"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 1063
    return-void
.end method

.method private loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 23
    .parameter "stage"

    .prologue
    .line 1071
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_0

    .line 1072
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sense: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    invoke-static {}, Lcom/android/providers/settings/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v19

    const/high16 v20, 0x4080

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_1

    .line 1140
    :goto_0
    return-void

    .line 1080
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v19, "htc.intent.action.QUICK_TIPS"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1085
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1086
    .local v13, packageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1087
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_3

    .line 1088
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ri.activityInfo.name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ri.activityInfo.packageName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1093
    .local v11, metaData:Landroid/os/Bundle;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_4

    .line 1094
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "metaData: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_4
    if-eqz v11, :cond_7

    .line 1099
    const-string v19, "com.htc.android.settings.quicktips"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1101
    .local v15, quicktips:Ljava/lang/String;
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_5

    .line 1102
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "quicktips: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_5
    if-eqz v15, :cond_6

    .line 1105
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1106
    .local v18, tips:[Ljava/lang/String;
    move-object/from16 v4, v18

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v17, v4, v7

    .line 1107
    .local v17, tip:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1111
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v17           #tip:Ljava/lang/String;
    .end local v18           #tips:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1115
    .end local v15           #quicktips:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1119
    .end local v11           #metaData:Landroid/os/Bundle;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .local v5, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_show_all_quick_tips()Z

    move-result v14

    .line 1122
    .local v14, quickTips:Z
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3b

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1124
    .local v12, packageName:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3b

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1127
    .end local v12           #packageName:Ljava/lang/String;
    :cond_9
    sget-boolean v19, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v19, :cond_a

    .line 1128
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "queryIntentActivities().size(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "packageSet.size(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "builder.toString(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_a
    sget-object v19, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v20, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v21, "SHOW_ALL_QUICK_TIPS"

    const-string v22, "show_all_quick_tips"

    invoke-static/range {v20 .. v22}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 551
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 555
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 559
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_accelerometer_rotation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_0
    return-void
.end method

.method private loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 573
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_NEW_MESSAGE_NOTIFICATION"

    const-string v3, "htc_new_message_notification"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_new_message_notification()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method private loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 588
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method private loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 612
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 615
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 617
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    :cond_0
    return-void
.end method

.method private loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 642
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 645
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_3D_HOME_SCREEN"

    const-string v3, "htc_3d_home_screen"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_3d_home_screen()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    :cond_0
    return-void
.end method

.method private loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 668
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 671
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "ENABLE_HTC_FASTBOOT"

    const-string v3, "enable_fastboot"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_fastboot_allowed()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    :cond_0
    return-void
.end method

.method private loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 687
    invoke-static {}, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/providers/settings/flag/HtcDeviceFlags$Info$DeviceType;

    if-ne v0, v1, :cond_0

    .line 689
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_MODE_ENABLED"

    const-string v3, "htc_wireless_sleep_mode_enabled"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_mode_enabled()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_START_TIME"

    const-string v3, "htc_wireless_sleep_start_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_start_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "HTC_WIRELESS_SLEEP_END_TIME"

    const-string v3, "htc_wireless_sleep_end_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_wireless_sleep_end_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    :cond_0
    return-void
.end method

.method private loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V
    .locals 4
    .parameter "stage"

    .prologue
    .line 723
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    if-ne p1, v0, :cond_0

    .line 726
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 734
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v2, "INACTIVITY_TIME"

    const-string v3, "inactivity_time"

    invoke-static {v1, v2, v3}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v2}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_inactivity_time()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 261
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnCreate()V

    .line 272
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 273
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 274
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 275
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 276
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 277
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 278
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 279
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 280
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 281
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 282
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 283
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 284
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 285
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 286
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 287
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 288
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 289
    return-void
.end method

.method private onInternalFactoryPostCreate()V
    .locals 3

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, ">> onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 303
    :cond_0
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SECURE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    const-string v1, "mobile_data"

    const-string v2, "0"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 316
    const-string v0, "<< onInternalFactoryPostCreate()"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 318
    :cond_2
    return-void
.end method

.method private onInternalUpgrade(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "oldHtcVersion"
    .parameter "db"

    .prologue
    .line 322
    const-string v0, "upgrading to the version"

    .line 323
    .local v0, UPGRADE_INFO:Ljava/lang/String;
    move v1, p1

    .line 325
    .local v1, upgradeVersion:I
    if-nez v1, :cond_0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion1(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 328
    const/4 v1, 0x1

    .line 331
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 333
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion2(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 334
    const/4 v1, 0x2

    .line 337
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 339
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion3(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 340
    const/4 v1, 0x3

    .line 343
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 345
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion4(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 346
    const/4 v1, 0x4

    .line 349
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 351
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion5(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 352
    const/4 v1, 0x5

    .line 355
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 357
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion6(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 358
    const/4 v1, 0x6

    .line 361
    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 363
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion7(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 364
    const/4 v1, 0x7

    .line 367
    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 369
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion8(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 370
    const/16 v1, 0x8

    .line 373
    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 375
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion9(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 376
    const/16 v1, 0x9

    .line 379
    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 381
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion10(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 382
    const/16 v1, 0xa

    .line 385
    :cond_9
    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 387
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion11(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 388
    const/16 v1, 0xb

    .line 391
    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 393
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion12(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 394
    const/16 v1, 0xc

    .line 397
    :cond_b
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 399
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion13(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 400
    const/16 v1, 0xd

    .line 403
    :cond_c
    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 405
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion14(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 406
    const/16 v1, 0xe

    .line 409
    :cond_d
    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 411
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion15(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 412
    const/16 v1, 0xf

    .line 416
    :cond_e
    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 418
    const/16 v1, 0x10

    .line 419
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion16(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 424
    :cond_f
    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrading to the version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 426
    const/16 v1, 0x11

    .line 427
    sget-object v2, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->loadVersion17(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;)V

    .line 430
    :cond_10
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->initializeRequiredKeysOnUpgrade()V

    .line 432
    return v1
.end method

.method private removeSetting(Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;Ljava/lang/String;)V
    .locals 2
    .parameter "table"
    .parameter "key"

    .prologue
    .line 247
    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;->SYSTEM:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Table;

    if-ne p1, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 252
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 254
    return-void

    .line 250
    .end local v0           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .restart local v0       #stmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0
.end method

.method private setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 180
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, ">> setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 185
    :cond_0
    const-string v0, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 187
    const-string v0, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 191
    const-string v0, "DELETE FROM system WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSystemDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 193
    const-string v0, "DELETE FROM secure WHERE name=?;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->mCompiledSecureDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 196
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "<< setupCompiledStatements(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, ">> onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t Boot mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.bootmode"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 102
    :cond_1
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isFactoryMode:Z

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalFactoryPostCreate()V

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 110
    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->insertHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 112
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 113
    const-string v0, "<< onCreate(...)"

    invoke-direct {p0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 115
    :cond_3
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 5
    .parameter "db"
    .parameter "oldGoogleVersion"
    .parameter "currentGoogleVersion"

    .prologue
    const/16 v4, 0x11

    .line 121
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, ">> onUpgrade(...)"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t currentGoogleVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->setupCompiledStatements(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-static {p1}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->queryHtcVersion(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 134
    .local v0, oldVersion:I
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t oldHtcVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 136
    const-string v2, "\t currentHtcVersion: 17"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 140
    :cond_1
    if-eq v0, v4, :cond_3

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onInternalUpgrade(ILandroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 148
    .local v1, upgradeVersion:I
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->closeCompiledStatements()V

    .line 150
    if-eq v1, v4, :cond_4

    .line 151
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 152
    const-string v2, "\t Upgrade failed!"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t upgradeVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 154
    const-string v2, "\t HTC_DATABASE_VERSION: 17"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 155
    const-string v2, "<< onUpgrade(...): false"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 157
    :cond_2
    const/4 v2, 0x0

    .line 171
    :goto_1
    return v2

    .line 144
    .end local v1           #upgradeVersion:I
    :cond_3
    const/16 v1, 0x11

    .restart local v1       #upgradeVersion:I
    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 162
    const/16 v2, 0x11

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->updateHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 163
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 168
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_5

    .line 169
    const-string v2, "<< onUpgrade(...): true"

    invoke-direct {p0, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->log(Ljava/lang/String;)V

    .line 171
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
