.class final Lcom/htc/opensense2/album/util/DrmManager$7;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$7;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/DrmManager$7;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/DrmManager$7;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;->onCancel()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v2}, Lcom/htc/opensense2/album/util/DrmManager;->access$402(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Lcom/htc/opensense2/album/util/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    :cond_1
    return-void
.end method
