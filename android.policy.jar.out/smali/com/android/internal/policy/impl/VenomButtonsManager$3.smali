.class Lcom/android/internal/policy/impl/VenomButtonsManager$3;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/VenomButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    #getter for: Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->access$1(Lcom/android/internal/policy/impl/VenomButtonsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_use_media"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendMediaButtonEvent(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;->this$0:Lcom/android/internal/policy/impl/VenomButtonsManager;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendMediaButtonEvent(I)V

    goto :goto_0
.end method
