.class Landroid/webkit/WebViewCore$3;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/WebStorage$QuotaUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->reachedMaxAppCacheSize(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Landroid/webkit/WebViewCore$3;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateQuota(J)V
    .locals 1
    .parameter "quota"

    .prologue
    .line 499
    iget-object v0, p0, Landroid/webkit/WebViewCore$3;->this$0:Landroid/webkit/WebViewCore;

    #calls: Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;J)V

    .line 500
    return-void
.end method
