.class public Lcom/htc/album/TabPluginDevice/TabPluginDevice;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    const v0, 0x7f0a003a

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    return-object v0
.end method
