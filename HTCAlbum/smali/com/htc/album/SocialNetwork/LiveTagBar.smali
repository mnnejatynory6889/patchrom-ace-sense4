.class public Lcom/htc/album/SocialNetwork/LiveTagBar;
.super Lcom/htc/album/modules/ui/widget/ControlBase;
.source "LiveTagBar.java"


# instance fields
.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/ControlBase;-><init>(ILandroid/content/Context;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LiveTagBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LiveTagBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method
