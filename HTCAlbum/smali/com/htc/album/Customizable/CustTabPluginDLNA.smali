.class public Lcom/htc/album/Customizable/CustTabPluginDLNA;
.super Ljava/lang/Object;
.source "CustTabPluginDLNA.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/Customizable/CustTabPluginDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/Customizable/CustTabPluginDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStyleExpandable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
