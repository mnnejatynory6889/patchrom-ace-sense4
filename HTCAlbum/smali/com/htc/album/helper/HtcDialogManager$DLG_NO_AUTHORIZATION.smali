.class public Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_NO_AUTHORIZATION"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method public static instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;-><init>(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040174

    new-instance v2, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION$1;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->mErrorTitle:Ljava/lang/String;

    return-void
.end method
