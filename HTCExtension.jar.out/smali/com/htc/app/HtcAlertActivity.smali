.class public abstract Lcom/htc/app/HtcAlertActivity;
.super Landroid/app/Activity;
.source "HtcAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/htc/app/HtcAlertController;

.field protected mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->finish()V

    .line 55
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->finish()V

    .line 63
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    .line 50
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/app/HtcAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 74
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->installContent()V

    .line 75
    return-void
.end method
