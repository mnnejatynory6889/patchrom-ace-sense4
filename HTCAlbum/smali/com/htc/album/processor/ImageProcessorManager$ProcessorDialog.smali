.class Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;
.super Landroid/app/DialogFragment;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessorDialog"
.end annotation


# instance fields
.field mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

.field mStringIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    const-string v0, "IDS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    check-cast p2, Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mListener:Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;->onCancel()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->mStringIds:[I

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v1, v3

    new-instance v4, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$2;

    invoke-direct {v4, p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$2;-><init>(Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v1, v3

    new-instance v4, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;

    invoke-direct {v4, p0}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
