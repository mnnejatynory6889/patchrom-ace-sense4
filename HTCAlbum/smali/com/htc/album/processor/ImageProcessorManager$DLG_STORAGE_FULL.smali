.class Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;
.super Landroid/app/DialogFragment;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLG_STORAGE_FULL"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->info:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->info:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->info:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->info:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->info:Landroid/os/Bundle;

    const-string v3, "ID"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0045

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040151

    new-instance v4, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL$1;

    invoke-direct {v4, p0}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #setter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I
    invoke-static {v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$302(Lcom/htc/album/processor/ImageProcessorManager;I)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
