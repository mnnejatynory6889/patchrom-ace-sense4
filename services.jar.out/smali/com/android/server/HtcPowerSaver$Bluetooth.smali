.class final Lcom/android/server/HtcPowerSaver$Bluetooth;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bluetooth"
.end annotation


# static fields
.field public static final DEFAULT_N_BLUETOOTH:Z = false

.field public static final KEY_N_BLUETOOTH:Ljava/lang/String; = "psaver_normal_bluetooth"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 973
    const-string v2, "Bluetooth"

    const-string v3, "powersaver_bluetooth"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.bt"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 974
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->mContext:Landroid/content/Context;

    .line 975
    return-void
.end method

.method private getSysSettings()Z
    .locals 3

    .prologue
    .line 1000
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1001
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 1002
    const-string v1, "HtcPowerSaver"

    const-string v2, "getSysSettings: Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v1, 0x0

    .line 1005
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setSysSettings(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 978
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 979
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 980
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_0
    return-void

    .line 984
    :cond_0
    if-eqz p1, :cond_2

    .line 985
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: Bluetooth is enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_1
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: error at btAdapter.enable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disableFromPowerSaver()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: Bluetooth is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 994
    :cond_3
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: error at btAdapter.disableFromPowerSaver()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1023
    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver$Bluetooth;->setSysSettings(Z)V

    .line 1024
    const-string v0, "HtcPowerSaver"

    const-string v1, "applyPowerSaverSettings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return v2
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1030
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Bluetooth;->getSysSettings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    const-string v2, "HtcPowerSaver"

    const-string v3, "restoreSystemSettings: Bluetooth is enabled, skip restoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    return v4

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1034
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 1035
    const-string v2, "HtcPowerSaver"

    const-string v3, "restoreSystemSettings: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    :cond_1
    const-string v2, "psaver_normal_bluetooth"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1039
    .local v0, normalValue:Z
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Bluetooth;->setSysSettings(Z)V

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1010
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Bluetooth;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 1012
    const-string v2, "HtcPowerSaver"

    const-string v3, "saveSystemSettings: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_0
    return v5

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Bluetooth;->getSysSettings()Z

    move-result v1

    .line 1016
    .local v1, sysValue:Z
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_bluetooth"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1017
    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSystemSettings: sysValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
