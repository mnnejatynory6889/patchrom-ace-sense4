.class final Lcom/htc/opensense2/album/util/DrmManager$2;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager;->showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
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

    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$2;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/DrmManager$2;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/util/DrmManager$2;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;->onCancel()Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
