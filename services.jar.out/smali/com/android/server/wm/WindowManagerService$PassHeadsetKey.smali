.class Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassHeadsetKey"
.end annotation


# instance fields
.field mKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter "keyEvent"

    .prologue
    .line 11606
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11607
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->mKeyEvent:Landroid/view/KeyEvent;

    .line 11608
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 11611
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11612
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11613
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11614
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 11616
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
